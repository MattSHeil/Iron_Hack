require_relative "../lib/fizzbuzz"
require "spec_helper"

describe "FizzBuzz" do 
	before :each do
		@fizzbuzz = FizzBuzz.new
	end

	it "Puts Fizz in every number divisible by 3" do 
		expect(@fizzbuzz.div_by_3(3)).to eq("Fizz")
	end

	it "Puts Fizz in every number divisible by 3" do 
		expect(@fizzbuzz.div_by_3(4)).to eq(4)
	end
	
	it "Puts Buzz in every number divisible by 5" do 
		expect(@fizzbuzz.div_by_5(5)).to eq("Buzz")
	end

	it "Puts Buzz in every number divisible by 5" do 
		expect(@fizzbuzz.div_by_5(4)).to eq(4)
	end

	it "Puts Fizz BUzz in every number divisible by 15" do
		expect(@fizzbuzz.div_by_15(30)).to eq("Fizz Buzz")
	end

	it "Puts Fizz BUzz in every number divisible by 15" do
		expect(@fizzbuzz.div_by_15(8)).to eq(8)
	end

end