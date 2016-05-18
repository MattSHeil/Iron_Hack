require_relative('lib/stringcalc')

calc = StringCalc.new

if calc.add("") == 0 
	puts "returned zero for empty string"
else
	puts "somrthing broke"
end

if calc.add("1") == 1
	puts "it worked"
else
	puts "things are getting weird"
end

if calc.length <= 2
	puts "addition is working fine"
else
	puts "multiple numberd add didnt work"
end