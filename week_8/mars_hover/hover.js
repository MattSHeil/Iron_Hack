var mattRover = {
	position: [2,2],
	direction: 'N'
}

var farazRover = {
	position: [3,4],
	direction: 'N'
}

var someRovers = [ mattRover, farazRover ]

var planetMars = [ [ , , , , , , , , , ], 
     			   [ , , , , , , , , , ], 
				   [ , , , , , , , , , ], 
				   [ , , , , , , , , , ], 
				   [ , , , , , , , , , ],
				   [ , , , , , , , , , ], 
				   [ , , , , , , , , , ], 
				   [ , , , , , , , , , ],
				   [ , , , , , , , , , ], 
				   [ , , , , , , , , , ], 
				]

planetMars[2][2] = 1
planetMars[3][4] = 1

planetMars[2][1] = 0


var roverPosition = mattRover.position
var roverDirection = mattRover.direction

function move(rover, direction) {
	var splitInst = direction.split("");
		splitInst.forEach(function(letter){
				
			var positionY = rover.position[0]
			var positionX = rover.position[1]

				switch(letter){
					case 'N':
						if (rover.position[0] > 0){ 
							if(planetMars[positionY - 1][positionX] !== 0 && planetMars[positionY - 1][positionX] === undefined){
								
								planetMars[positionY][positionX] = 2;
								var newPostion = --rover.position[0]
								planetMars[newPostion][positionX] = 1
							}	
						}
						break;
					
					case 'E':
						if (rover.position[1] < 9){
							if (planetMars[positionY][positionX + 1] !== 0 && planetMars[positionY][positionX + 1] === undefined){
								planetMars[positionY][positionX] = 2;
								var newPostion = ++rover.position[1]
								planetMars[positionY][newPostion] = 1
							}
						}
						break;
					
					case 'S':
						if (rover.position[0] < 9){
							if (planetMars[positionY + 1][positionX] !== 0 && planetMars[positionY + 1][positionX] === undefined){
								planetMars[positionY][positionX] = 2;
								var newPostion = ++rover.position[0]
								planetMars[newPostion][positionX] = 1
							}
						}
						break;

					case 'W': 
						if (rover.position[1] > 0){
							if (planetMars[positionY][positionX - 1] !== 0 && planetMars[positionY][positionX - 1] === undefined){
								planetMars[positionY][positionX] = 2;
								var newPostion = --rover.position[1]
								planetMars[positionY][newPostion] = 1
							}
						}
						break;
					}
	})
}



someRovers.forEach(function(rover){
	move(rover, "SSSSS")
	console.log(rover)
})

console.log(planetMars)
