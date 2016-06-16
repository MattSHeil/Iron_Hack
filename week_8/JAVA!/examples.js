function eat(food){
	console.log("eating some " + food);
}

eat("pizza");

for (var i = 1; i <= 42; i++){
	console.log(i);
}

var i = 1; 

while (i <=42){
	console.log(i);
	i++;
}

var foods = ["pizza", "cookies", "ice cream", "Bread"];

Do the same thing

Anonymus Style

foods.forEach(function(foods){
	console.log(foods);
})

Name Style

function logFood(foods){
	console.log(foods);
}

foods.forEach(logFood);

var capsFood = foods.map(function(foods){
	return foods.toUpperCase();
})

console.log(capsFood);

var msg = foods.reduce(function(pre, food){
	return pre + " AND " + food
})

console.log(msg);

var breadless = foods.filter(function(food){
	return food !== "Bread";
})

console.log(breadless)

var food = "Pizza"

if (food === "Pizza") {
	console.log("Pizza is addicting!!!");
} else if (food === "Sushi") {
	console.log("Sushi is amazing!!!");
} else {
	console.log("Thats weird ...");
}


