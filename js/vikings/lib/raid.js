var Raid = function(raiders, victims){
	this.raiders = raiders;
	this.victims = victims;
	this.turns = Math.round((Math.random() * 3) + 5)
	this.casualties = {
		vikings: [],
		saxons: []
	}
}

Raid.prototype.intialize = function(){
	for(var i = 1; i <= this.turns; i ++){
		var survivors = [];

		this.raiders.forEach((viking) => {
			var randomN = Math.round((Math.random() * this.victims.length) - 1);
			var randomVictim = this.victims[randomN];

			viking.hit(randomVictim);
			randomVictim.hit(viking);

				if(viking.hp <= 0){
					this.casualties.vikings.push(viking);
				} else {
					survivors.push(viking);
				}

				if(randomVictim.hp <= 0){
					this.casualties.saxons.push(randomVictim);
					this.victims.splice(randomN, 1);
				}
		})

		this.raiders = survivors;

	}

	this.printCasualtiesReport();

}

Raid.prototype.printCasualtiesReport = function(){
	console.log(`The Vikings lost ${this.casualties.vikings.length}`)
	console.log(`The Saxons lost ${this.casualties.saxons.length}`)
}

module.exports = Raid