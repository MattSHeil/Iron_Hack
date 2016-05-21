class FizzBuzz

	def div_by_3(number)
		if number % 3 == 0
			"Fizz"
		else 
			number
		end
	end

	def div_by_5(number)
		if number % 5 == 0
			"Buzz"
		else 
			number
		end
	end

	def div_by_15(number)
		if number % 15 == 0
			"Fizz Buzz"
		else 
			number
		end
	end
end