$(document).ready(function(){

//or $(document).on("ready", function(){


	var APPprice = '<h3>I LIED!!!</h3>'
    var PREprice = '<h3>I LIED!!!</h3>'

    var prependMe = '<p>Prepend Me</p>'
    var afterMe = '<p>After Me</p>'
    var beforeMe = '<p>Before Me</p>'

    $('#title').after(afterMe)
    $('#title').before(beforeMe)
    $('#title').prepend(prependMe)

    $('#ICE-CREAM').on('click', function () {
      alert('ICE-CREAM TIME!!!');
      $('#ICE-CREAM').fadeOut();
      $('.container').append(APPprice);
      $('.container').prepend(PREprice);
    });

    $('#MAYO-PIZZA').on('click', function () {
      alert('THE MAYO MOSTER ATTACKED YOUR PIZZA!!!');
    });


    $('.empanada-button').on('click', function () {
      alert('Empanada will arrive in 5 min');
    });

    $('.sushi-button').on('click', function () {
      alert('Sushi will arrive in 5 min');
    });

    $('.pasta-button').on('click', function () {
      alert('Pasta will arrive in 5 min');
    });

    $('.pizza-button').on('click', function () {
      alert('Pizza will arrive in 5 min');
    });

    $('.hello-button').on('click', function () {
      alert('hello world');
    });

    $('.doomsday-button').on('click', function () {
      $(".2").fadeOut();
    });

    $('.unicorn-button').on('click', function(){
      $('div').toggleClass('unicorn-mode');
      $("body").toggleClass('unicorn-mode');
      $("button").toggleClass('unicorn-mode');
      $("p").toggleClass('unicorn-mode');
      $("h1").toggleClass('unicorn-mode');
    });

    $('form').on('submit', function(event){
    	event.preventDefault();
    	
    	var counter = 0;
    	$('input').each(function(idx, ele){
    		if($(ele).val() === ""){
    			counter++;
    		}
    	});
    	console.log(counter)
		if(counter !== 0){
			alert("you forgot something")
		}   		    		
    });
});