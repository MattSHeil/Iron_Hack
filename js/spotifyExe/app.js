$(document).ready(function(){

	$(".js-artist-list").on("click", ".js-artist-li", function(event){
		var artistId = $(event.currentTarget).data("artist-id")
		var artistName = $(event.currentTarget).data("artist-name")
		
		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
			success: function(response){
				$(".modal-artist-albums").empty();
				console.log(response)
				var someAlbums = response.items
		
				someAlbums.forEach(function(singleAlbum){
					var albumLi = `
					<li class="js-single-album">
						<button class="js-get-tracks css-button-noStyle" data-album-id="${singleAlbum.id}" data-album-name="${singleAlbum.name}">
							${singleAlbum.name}
						</button>
					</li>
					`
					$(".modal-artist-albums").append(albumLi);
				});
				
				$(".modal-artist-name").text(artistName);
				$(".albums-modal").modal("toggle")
			},
			error: albumError	
		});
	});

	$(".modal-artist-albums").on("click", ".js-get-tracks", function(event){
		var albumId = $(event.currentTarget).data("album-id");
		var albumName = $(event.currentTarget).data("album-name");
				
		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/albums/${albumId}/tracks`,
			success: function(response){
				var tracksArray = response.items
				$(".albums-modal").modal("toggle")
				tracksArray.forEach(function(singleTrack){
					var html = `<li>${singleTrack.name}</li>`

					$(".modal-album-tracks").append(html);
				});
				$(".modal-album-name").text(albumName)
				$(".track-modal").modal("toggle")
			}, 
			error: trackError

		});
	});

	function trackError(error){
		console.log(error)
	};

	function albumError(error){
		console.log(error)
	};

	function appendArtist(singleArtist){
		if (singleArtist.images[0]) {
				artistsImg = singleArtist.images[0].url
			} else {
				artistsImg = "http://placehold.it/200x200"
			};

			var html = `
				<li class="js-artist-li" data-artist-id=${singleArtist.id} data-artist-name="${singleArtist.name}">
					<h3>${singleArtist.name}</h3>
					<img src=${artistsImg}>
				</li>
			`

			$(".js-artist-list").append(html)
			// $(".js-artist-li").on("click", function(){
			// 	alert("Clicked!");
			// });
	};

	var showArtist = function(response){
		var spotifyObj = response.artists.items

		spotifyObj.forEach(appendArtist);
	};

	var artistsError = function(error){				
		console.log("These are not the droids you are looking for ...");
		console.log(error.responseText);
	}

	$("form").on("submit", function(event){
		event.preventDefault();
		$(".js-artist-list").empty();
		var SEARCHTERM = $(".js-search-bar").val();

		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=artist&query=${SEARCHTERM}`,
			success: showArtist,
			error: artistsError	
		});
	});
});

