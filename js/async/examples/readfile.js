var fs = require('fs')

function print (error, content){
	if (error) {
		console.log('OH NO! Error!', error)
	} else {
	console.log(content)
	}
}

fs.readFile('file.txt', 'utf8', print);