var number = '80:70:90:100';

// Long Way 

var splitNumbers = number.split(":");

var reducedNumbers = splitNumbers.reduce(function(pre, next){
	return parseInt(pre) + parseInt(next);
})

var average1 = reducedNumbers/splitNumbers.length;

// Single Function

function average2(num){
	var splitNumbers = number.split(":");
		var reducedNumbers = splitNumbers.reduce(function(pre, next){
			return parseInt(pre) + parseInt(next);
		})
	return reducedNumbers/splitNumbers.length
}

console.log(average2(number))