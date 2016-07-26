$(document).ready(function(){
	
	var showCharacters = function(response){
		var charactersArray = response;

		charactersArray.forEach(function(aCharacter){
			var html = `
				<li>
					<h2>Who: ${aCharacter.name}</h2>
					<h4>Occupation: ${aCharacter.occupation}</h4>
					<h4>Weapon: ${aCharacter.weapon}</h4>
					<h4>Debt: ${aCharacter.debt}</h4>
				</li>
			`;
			$(".js-character-ul").append(html);
		});

	};

	var errorHandler = function(error){				
		console.log("These are not the droids you are looking for ...");
		console.log(error.responseText);
	}

	$(".js-get-characters").on("click", function(){
		$(".js-character-ul").empty();
		$.ajax({
			type: "GET",
			url: "https://ironhack-characters.herokuapp.com/characters",
			success: showCharacters,
			error: errorHandler
		});
	});

	$("form").on('submit', function(event){
    	event.preventDefault();
    	
    	var newCharacter = {
    		name: $(".js-c-name").val(),
    		occupation: $(".js-c-occupation").val(),
    		weapon: $(".js-c-weapon").val(),
    		debt: $("input[name=debt]:checked").val()
    	}

    	var counter = 0;
    	$('.js-required').each(function(idx, ele){
    		if($(ele).val() === ""){
    			counter++;
    		}
    	});
    	console.log(counter)
		if(counter !== 0){
			alert("you forgot something");
		} else {
			$.ajax({
				type: "POST",
				url: "https://ironhack-characters.herokuapp.com/characters",
				data: newCharacter, 
				success: function(response){
					console.log("success!")
					console.log(response)
				},
				error: errorHandler
			});
		}; 

		$(".js-c-name").val("");
    	$(".js-c-occupation").val("");
    	$(".js-c-weapon").val("");
    	$("input[name=debt]:checked").prop('checked', false);

    });

});