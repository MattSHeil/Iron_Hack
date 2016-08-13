$(document).ready(function(){
	$(".js_add_ingredient").on("click", function(event){
		
		var sandwichId = $(".js_sandwich_id").data("sandwich-id");
		var ingredientId = $(event.currentTarget).data("ingredient-id");
		// console.log(ingredientId)

		var addParams = {
			"id": sandwichId,
			"ingredient_id": ingredientId
		};

		// console.log(addParams.id)

		doAjax(addParams)
	});

	function doAjax(params){
		$.ajax({
			type: "POST",
			url: `/api/sandwiches/${params.id}/ingredients/add`,
			data: params,
			success: addIngredientSucess,
			error: addIngredientError 	
		});
	};

	function addIngredientSucess(success){
		// console.log(success)
		var ingredient = success.Ingredients.pop()
		// console.log(ingredient)
		// console.log(something.Ingredients)
		var totalCal = success.Sandwich.total_calories
		
		var html = `
			<li><h3>${ingredient.name} | Calories: ${ingredient.calories}</h3></li>
		` 
		$(".js_ingredient_list").append(html);
		$(".js_current_calories").text(totalCal)
	};

	function addIngredientError(error){
		console.log(error)
	};
});
