var Viking = function(name, hp, power, speed){
	this.name = name;
	this.hp = hp;
	this.power = power;
	this.speed = speed
};

Viking.prototype.hit = function(npc){
	npc.hp = npc.hp - this.power;
	console.log(`${this.name} hit ${npc.name}, he has ${npc.hp} hp left	\n`)
};

module.exports = Viking