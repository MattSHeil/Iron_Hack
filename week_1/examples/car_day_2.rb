class Car
	attr_accessor :color
	# makes color available for change everthing else is static
	
	def initialize (color, honk, lights)
		@color = color
		@honk = honk
		@lights = lights
	end
	def honk
	    puts "My car goes #{@honk}"
	end
	def color
	    puts "My car is #{@color}"
	    
	end
	def lights
	    puts "My car has #{@lights} lights"
	end
    def play_radio
        puts "We are the champions" 
    end  
end

class RaceCar < Car
	def initialize (color, honk, lights, model)
		super(color, honk, lights)
		@model = model
    end
    def model
    	puts "I have a #{@model}"
    end
    def honk
        puts "My car goes #{@honk.upcase}"
    end
end

mazda = Car.new("Red","Beeeep","Xenon")
tesla = Car.new("Chrome","Quaaaaack","Britgh")
bmw = Car.new("Black","Nananana Batman","Purple")
ferrari = RaceCar.new("Red","vroooooooom","white","F458")


ferrari.model

