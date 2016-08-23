if (window.PokemonApp === undefined){
	window.PokemonApp = {};
}

PokemonApp.init = function(){
	console.log("Pokedex is Live!");
};

$(document).on("ready", function(){
	PokemonApp.init();
});