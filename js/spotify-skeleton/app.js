$(document).ready(function(){

	$("form").on("submit", function(event){
		event.preventDefault();
		$(".btn-play").removeClass("disabled")
		var songSearch = $(".js-search-bar").val();

		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=track&query=${songSearch}`,
			success: songHandler,
			error: songError
		});
	});

	function songHandler(respose){
		// console.log(respose)
		var songsArray = respose.tracks.items 		
		var singleSong = respose.tracks.items[0]
		var band = singleSong.artists[0].name
		var songName = singleSong.name
		var songPreview = singleSong.preview_url
		var songCover = singleSong.album.images[0].url
		loadSongInfo(band, songName, songPreview, songCover)
		getArtistInfo(band)
		allTracks(songsArray)
		var songsArrayString = JSON.stringify(songsArray)
		window.localStorage.setItem("song-array", songsArrayString)

		var artistId = respose.tracks.items[0].artists[0].id
		$(".modal-artist-name").data("id-matt", artistId)
		// console.log(artistId)
	};

	function songError(error){
		console.log(error)
	};

	function loadSongInfo(band, songName, songUrl, songCover){
		$(".title").empty().text(songName);
		$(".author").empty().text(band);
		$(".js-song-preview").prop("src", songUrl)
		$(".coverIMG").prop("src", songCover);
	};

	$(".PLAYBTN").on("click", function(){
		if( $(".PLAYBTN").hasClass("playing") === false){
			$(".PLAYBTN").toggleClass("playing")
			$(".js-song-preview").trigger("play")	
		} else {
			$(".PLAYBTN").toggleClass("playing")
			$(".js-song-preview").trigger("pause")			
		};
	});

	function printTime () {
  		var current = $('.js-song-preview').prop('currentTime');
  		$("progress").val(current)
	}
	// Have printTime be called when the time is updated
	$('.js-song-preview').on('timeupdate', printTime);

	function getArtistInfo(artistName){
		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=artist&query=${artistName}`,
			success: getInfo,
			error: artistError
		});		

		function getInfo(response){
			// console.log(response)
			var artistIfno = response.artists.items[0]

			var artistName = artistIfno.name
			var artistPopularity = artistIfno.popularity
			var artistFollowers = artistIfno.followers.total
			var artistGenres = artistIfno.genres
			var artistPhoto = artistIfno.images[0].url

			placeInfoInModal(artistName, artistPopularity, artistFollowers, artistGenres, artistPhoto)
		};

		function artistError(error){
			console.log(error)
		};

	};

	function placeInfoInModal(name, popularity, followers, genres, photo){
		$(".modal-artist-name").empty().append(name);

		var html = `
		<li>Popularaty: ${popularity}</li>
		<li>Followers: ${followers}</li>
		`
		$(".modal-body-ul").empty().append(html);
		genres.forEach(function(singleGenre){
			var html = `
			<li>${singleGenre}</li>
			`
			$(".modal-genre-list").append(html);
		});
		$(".modal-artist-img").prop("src", photo);
	};

	$(".title-btn").on("click", function(){
		$(".modalArtistInfo").modal("toggle");
		var artistsNameForModalButton = $(".author").text();
		$(".modalArtisAlbumsBtn").text(artistsNameForModalButton + " Albums");
	});

	$(".seeMoreOptions").on("click", function(){
		$(".modalExtraSongs").modal("toggle");	
	});

	function allTracks(arrayOfSongs){
		arrayOfSongs.forEach(function(singleSong){
			var html = `
			<li class="song-choices" data-song-id=${singleSong.id}>${singleSong.name}</li>
			`
			$(".modal-song-options").append(html);
		});
	};

	$(".modal-song-options").on("click", ".song-choices", function(event){
		var songId = $(event.currentTarget).data("song-id")
	 //changeSong function goes through localStorage and filters to find info based on songId
	 //then get info from object and passes it through loadSongInfo()
		changeSong(songId)
		$(".modalExtraSongs").modal("toggle");
	});

	function changeSong(someId){
	 //get the song object based on their ID
		var idToFilter = someId;
		var songsArray = JSON.parse(window.localStorage.getItem("song-array")); 
		function theOne(obj){
			if (obj.id === idToFilter){
				return obj		
			};	
		};
		var theChosenOne = songsArray.filter(theOne);
		// console.log(theChosenOne);

	 //get info from object
		var theBand = theChosenOne[0].artists[0].name
		var theSong = theChosenOne[0].name
		var theCover = theChosenOne[0].album.images[0].url
		var thePreview = theChosenOne[0].preview_url

		// console.log(theBand);
		// console.log(theSong);
		// console.log(theCover);
		// console.log(thePreview);
		loadSongInfo(theBand, theSong, thePreview, theCover);
	}

	$(".modalArtisAlbumsBtn").on("click", function(){
		$(".modalArtistInfo").modal("toggle");
		$(".someArtistAlbumsModal").modal("toggle");
		var titleText = $(".modalArtisAlbumsBtn").text();
		$(".titleAlbumsModal").text(titleText);

		var artistID = $(".modal-artist-name").data("id-matt")
		ajaxArtistAlbums(artistID)
	});


	function ajaxArtistAlbums(searchTerm){
		var id = searchTerm
		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/artists/${id}/albums`,
			success: artistAlbumsSuccessHandler,
			error: artistAlbumsErrorHandler
		});
	};

	function artistAlbumsSuccessHandler(response){
		var albumArray = response.items
		albumArray.forEach(function(singleAlbum){
			var html = `<ul><li>${singleAlbum.name}</li> 
						</ul>
						<ul><li>${singleAlbum.name}</li> 
						</ul>`
			$(".modalAlbumsFromSingleArtist").append(html)
		});
	};

	function artistAlbumsErrorHandler(error){
		console.log(error)
	};
});