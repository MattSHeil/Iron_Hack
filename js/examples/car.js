var l = console.log()

var Car = function(model, noise) {
	this.model = model;
	this.noise = noise;
	this.wheel = 4;

	this.makeNoise = function(){
		console.log(this.noise + "!!!");
	};
}

var bmw = new Car("I8","zzzzzzzzzz")

bmw.makeNoise