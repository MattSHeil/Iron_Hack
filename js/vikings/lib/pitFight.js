var pitFight = function(viking1, viking2){
	this.viking1 = viking1
	
	this.viking2 = viking2
	
	if(viking1.speed > viking2.speed){
		var npc1 = viking1;
		var npc2 = viking2;
	} else {
		var npc1 = viking2;
		var npc2 = viking1;
	}	
	
	this.state = {
		attacking: npc1,
		defending: npc2 
	}
	
	this.turns = 100 
}

pitFight.prototype.initiate = function(){
	console.log(`The fight between ${this.viking1.name} and ${this.viking2.name} will begin`)
	this.battle()
}

pitFight.prototype.vikingNearlyDead = function(){
	return (this.viking1.hp <= (this.viking2.power + 1)) 
		|| (this.viking2.hp <= (this.viking1.power + 1));
}

pitFight.prototype.battle = function(){
	for ( var i = 1; i <= this.turns; i++ ){
		var attackingViking = this.state.attacking
		var defendingViking = this.state.defending
		if(!this.vikingNearlyDead()){
			attackingViking.hit(defendingViking)
			console.log('\n********************\n')

			this.state.attacking = defendingViking
			this.state.defending = attackingViking

		} else {
			console.log('Battle is over');
			console.log(`${defendingViking.name} CONQUERED ${attackingViking.name}!!!`)
			return;
		}
	}
}

module.exports = pitFight