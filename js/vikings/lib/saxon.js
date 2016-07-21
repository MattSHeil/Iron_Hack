var Saxon = function(hp, power){
	this.name = "Saxon";
	this.hp = hp;
	this.power = power;
}

Saxon.prototype.hit = function(npc){
	npc.hp = npc.hp - this.power;
	console.log(`${this.name} hit ${npc.name}, he has ${npc.hp} hp left	\n`)
}

module.exports = Saxon