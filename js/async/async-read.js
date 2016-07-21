'use strict'
var fs = require('fs');

var l = (data) => console.log(data);
// var l = function(data){
// 	console.log(data)
// }

var reader =  function(error, content){
	if (error) {
		l(error);
	} else {
		l(content);
	}
}

fs.readFile("werther", reader);

fs.readFile("kafka", reader);

fs.readFile("cicero", reader);