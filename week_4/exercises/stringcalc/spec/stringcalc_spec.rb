require_relative "../lib/stringcalc"
require "spec_helper"

describe "StringCalc" do 
	it "returns 0 for an empty string" do 
		expect(StringCalc.new.add("")).to eq(0)
	end

	it "returns 3 just that number" do 
		expect(StringCalc.new.add("3")).to eq(3)
	end
end