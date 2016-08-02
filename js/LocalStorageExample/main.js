$(document).ready(function(){

	if (window.localStorage.getItem("img-url")){
		var allImg = JSON.parse(window.localStorage.getItem("img-url"));	

		allImg.forEach(function(singleImg){
			var html = `<img src=${singleImg}>`

			$(".img-container").append(html)
		});
	} else {
		window.localStorage.setItem("img-url", "[]")
	}	

	var $color_button = $('.color-changer');

	function changeColor(event){
		var color = $(event.target).data('color');
		$("body").css("background-color", color);
		window.localStorage.setItem("bg-color", color);
	};

	function loadDefaultColor(){
 		if (window.localStorage.getItem("bg-color")){
    		var savedColor = window.localStorage.getItem("bg-color");
    		$("body").css("background-color", savedColor);
  		};
	};

	loadDefaultColor();
	$color_button.on("click", changeColor);

	$(".some-img").on("click", function(){
		var someUrl = prompt("Whats your favorite img???");
		
		var html = `<img src=${someUrl}>`

		$(".img-container").append(html)		

		var imgArray = JSON.parse(window.localStorage.getItem("img-url"));

		imgArray.push(someUrl)

		window.localStorage.setItem("img-url", JSON.stringify(imgArray));
	});
});