'use strict'

var nets = require('nets');
var l = (data) => console.log(data);
// var l = function(data){
// 	console.log(data)
// }

nets("werther.txt", function(error, response ,content){
	if (error) {
		l(error);
	} else {
		l(content.toString());
	}
});

nets("kafka.txt", function(error, response ,content){
	if (error) {
		l(error);
	} else {
		l(content.toString());
	}
});

nets("cicero.txt", function(error, response ,content){
	if (error) {
		l(error);
	} else {
		l(content.toString());
	}
});
