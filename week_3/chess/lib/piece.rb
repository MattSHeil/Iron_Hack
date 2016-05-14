class Piece
	attr_accessor :starting_x, :starting_y, :team
	def initialize(starting_x, starting_y, team)
		@starting_x = starting_x
		@starting_y = starting_y
	end
end