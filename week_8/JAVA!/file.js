var josh_array = [ 	"pizza", 
					"hot dog",
					"ice cream",
					"steak",
					"pizza"
];

function findOccurences(array, WordToLookFor){
	var totalOccurences = 0;

	josh_array.forEach(function(word){
		if (word === WordToLookFor){
			totalOccurences++;
		}	
	})
	return totalOccurences
}

var count = findOccurences(josh_array, "pizza")
console.log(count);
