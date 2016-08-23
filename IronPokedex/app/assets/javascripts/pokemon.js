// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.Pokemon = function(pokemonUri){
	this.id = PokemonApp.ifFromUri(pokemonUri)
};

PokemonApp.Pokemon.prototype.render = function(){
	console.log("Rendering Pokemon: " + this.id);

	$.ajax({
		url: "api/pokemon/" + this.id, 
		success: function(response){
			console.log("Pokemon Info:");
			console.log(response);

			$(".js-pokemon-modal").modal("show")
		}
	});
};

PokemonApp.idFromUri = function(pokemonUri){
	var uriSegment = PokemonUri.split("/");
	var secondLast = uriSegment.length - 2;
	return uriSegment[secondLast];
};

$(document).on("ready", function(event){
	$(".js-show-pokemon").on("click", function(){	
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri")

		var pokemon = new PokemonApp.Pokemon(PokemonUri);
		pokemon.render();
	});
});