$(document).ready(function(){
	
	function onLocation(position){
		var latitude = position.coords.latitude
		var longitude = position.coords.longitude

		if ($(".js-zoom").val() === ""){
			var zoom = 17
		} else {
			var zoom = $(".js-zoom").val();
		}

		var map =  `https://maps.googleapis.com/maps/api/staticmap?center=${latitude},${longitude}&zoom=${zoom}&size=400x300`
		var html = `<img src=${map}>`
		$("h1").after(html)
	};

	// function map() {
	// }

	function onError(error){
		console.log(error)
	};
	
	if("geolocation" in navigator){
		console.log("WE GOT GEOLOCATION!!!")

		var options = {
			enableHighAccuracy: true,
			timeout: 3000
		};
		navigator.geolocation.getCurrentPosition(onLocation, onError, options);



	} else {
		alert("YOU SHALL NOT PASS!!! ... you dont have geolocation");
	};

	function getMap(latitude, longitude){
		$("form").on("submit", function(event){
			event.preventDefault();
			if ($(".js-zoom")) {
				var zoom = $(".js-zoom").val();
			} else {
				var zoom = 13
			}
			return locationMap = `https://maps.googleapis.com/maps/api/staticmap?center=${latitude},${longitude}&zoom=${zoom}&size=400x300`
		});	
	};	
});
