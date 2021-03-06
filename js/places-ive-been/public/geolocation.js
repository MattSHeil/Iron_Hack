var map;

if ("geolocation" in navigator){
  navigator.geolocation.getCurrentPosition(onLocation, onError);
}

function loadPreviousMarkers(position) {
  var marker = new google.maps.Marker({
   position: position,
   map: map
 });
};

if (window.localStorage.getItem("visited-places")){
  
  var placesArray = JSON.parse(window.localStorage.getItem("visited-places"))  

  placesArray.forEach(function(thePlace){
    loadPreviousMarkers(thePlace);
  });

} else {

  window.localStorage.setItem("visited-places", "[]");

};

function onLocation(position){
  // We can't just directly feed the position into our google map
  // The objects are formatted differently, google maps is looking for
  // an object with "lat" and "lng" keys.
  var myPosition = {
    lat: position.coords.latitude,
    lng: position.coords.longitude
  };

  createMap(myPosition);
  setupAutocomplete();
}
  
function createMap(position){
  var mapOptions = {
    center: position,
    zoom: 17
  };
  map = new google.maps.Map($('#map')[0], mapOptions);
  createMarker(position);
  // createMarker(bayside);
}

// var bayside = {
//   lat: 25.7773137,
//   lng: -80.1877552
// };

function onError(err){
  console.log("What are you using, IE 7??", err);
}


function createMarker(position) {
  var marker = new google.maps.Marker({
   position: position,
   map: map
 });
var somePlaces = JSON.parse(window.localStorage.getItem("visited-places"));
somePlaces.push(position);
window.localStorage.setItem("visited-places", JSON.stringify(somePlaces));
}

function setupAutocomplete(){
  var input = $('#get-places')[0];
  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.addListener('place_changed', function(){
    var place = autocomplete.getPlace();
    if (place.geometry.location) {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
      createMarker(place.geometry.location);
    } else {
      alert("The place has no location...?")
    }
  });
}