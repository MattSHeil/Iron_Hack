// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.Pokemon = function(pokemonUri){
	this.id = PokemonApp.idFromUri(pokemonUri)
};

PokemonApp.Pokemon.prototype.render = function(){
	console.log("Rendering Pokemon: " + this.id);

	$.ajax({
		url: "api/pokemon/" + this.id, 
		success: function(response){
			console.log("Pokemon Info:");
			console.log(response);

			$(".js-pokemon-modal").modal("show")
			$(".js-pokemon-name").text(response.name)
			$(".js-pokemon-number").text(response.pkdx_id)
			$(".js-pokemon-weight").text(response.weight)
			$(".js-pokemon-height").text(response.height)
			$(".js-pokemon-attack").text(response.attack)
			$(".js-pokemon-defense").text(response.defense)
			$(".js-pokemon-spattack").text(response.sp_atk)
			$(".js-pokemon-spdefense").text(response.sp_def)
			$(".js-pokemon-speed").text(response.speed)
		}
	});
};

PokemonApp.idFromUri = function(pokemonUri){
	var uriSegment = pokemonUri.split("/");
	var secondLast = uriSegment.length - 2;
	return uriSegment[secondLast];
};

$(document).on("ready", function(){
	$(".js-show-pokemon").on("click", function(event){	
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri")

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});