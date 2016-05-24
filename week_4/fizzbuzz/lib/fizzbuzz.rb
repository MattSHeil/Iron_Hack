class FizzBuzz
	def fizz?(number)
		number % 3 == 0
	end

	def buzz?(number)
		number % 5 == 0
	end

	def fizz_buzz?(number)
		fizz?(number) && buzz?(number)
	end

	def fizz_printer(number)
		array = []

		(1..number).each do | num |
			if fizz_buzz?(num)
				array.push("FizzBuzz")
			elsif buzz?(num)
				array.push("Buzz")
			elsif fizz?(num)
				array.push("Fizz")
			else
				array.push(num)
			end
		end
		
		array
	end
end