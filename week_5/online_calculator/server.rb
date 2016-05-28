require "sinatra"
require_relative "lib/calculator"


calc = Calculator.new

get "/" do
	erb(:home)
end

post "/calculation_result" do

	first = params[:first_number].to_f
	second = params[:second_number].to_f
	operation = params["operation"]
		
		if operation == "addition"
			@result = calc.add(first, second)
			"#{@result}"
		elsif operation == "subtraction"
			@result = calc.subtract(first, second)
			"#{@result}"
		elsif operation == "multiplication"
			@result = calc.multiply(first, second)
			"#{@result}"
		else operation == "division"
			@result = calc.divide(first, second)
			"#{@result}"
		end

		erb(:calculation_result)
end

get "/memory" do
	# use params to @result 
	# IO.write to do something with it
	erb(:memory)
end


# get "/add" do
# 	erb(:add)
# end

# post "/calculate_add" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = calc.add(first, second)
# 	"#{result}"
# end

# get "/subtract" do
# 	erb(:subtract)
# end

# post "/calculate_subtract" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = calc.subtract(first, second)
# 	"#{result}"
# end

# get "/multiply" do
# 	erb(:multiply)
# end

# post "/calculate_multiply" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = calc.multiply(first, second)
# 	"#{result}"
# end

# get "/divide" do
# 	erb(:divide)
# end

# post "/calculate_divide" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = calc.divide(first, second)
# 	"#{result}" 
# end













