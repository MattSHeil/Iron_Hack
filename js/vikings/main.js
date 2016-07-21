var PitFight = require("./lib/pitFight")
var Viking = require("./lib/viking")
var Saxon = require("./lib/saxon")
var Raid = require("./lib/raid")

// var fighter1 = new Viking("CJ", 100, 1, 2)
// var fighter2 = new Viking("Andjela", 100, 20, 30)

// var bout1 = new PitFight(fighter1, fighter2)
// bout1.initiate()

var Vikings = [
	new Viking("Matt", 1000, 60, 20),
	new Viking("Dieter", 1000, 59, 15),
	new Viking("Ryan", 1000, 59, 15),
	new Viking("Patrick", 1000, 59, 15),
	new Viking("Irene", 1000, 59, 17),
	new Viking("Chris", 1000, 59, 17),
	new Viking("Faraz", 1000, 59, 11),
	new Viking("Josh", 100, 1, 1)
]

var Saxon_town = []

for (var i = 0; i < 100; i ++){
	var hp = Math.round(( Math.random() * 19) + 1);
	var power = Math.round(( Math.random() * 19) + 1);
	Saxon_town.push(new Saxon(hp, power));
}

var war = new Raid(Vikings, Saxon_town)
war.intialize()
