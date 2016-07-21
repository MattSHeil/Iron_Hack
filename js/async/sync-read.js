'use strict'
var fs = require('fs');

var l = (data) => console.log(data);
// var l = function(data){
// 	console.log(data)
// }

var wether = fs.readFileSync("werther.txt");
l(wether);

var weather = fs.readFileSync("kafka.txt");
l(kafka);

var cicero = fs.readFileSync("cicero.txt");
l(cicero);