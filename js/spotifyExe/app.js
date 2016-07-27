$(document).ready(function(){

	function appendArtist(singleArtist){
		if (singleArtist.images[2]) {
				artistsImg = singleArtist.images[2].url
			} else {
				artistsImg = "http://placehold.it/200x200"
			};

			var html = `
				<li>
					<h3>${singleArtist.name}</h3>
					<img src=${artistsImg}>
				</li>
			`

			$(".js-artist-list").append(html)
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

