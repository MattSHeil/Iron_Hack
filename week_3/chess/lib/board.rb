require_relative('piece')
require_relative('rook')
require_relative('bishop')
require_relative('queen')
require_relative('king')
require_relative('pawnwhite')
require_relative('pawnblack')
require_relative('knight')

class Board 
	def initialize
		@board = [
					[],
					[],
					[],
					[],
					[],
					[],
					[],
					[],
					[],
						]
	end
	def possible_moves
		def valid_coord(starting_x, starting_y, ending_x, ending_y)
	 		if ((starting_x <= 8) && (starting_x >=1)) &&
	 		   ((starting_y <= 8) && (starting_y >=1)) &&
	 		   ((ending_x <= 8) && (ending_x >=1)) &&
	 		   ((ending_y <= 8) && (ending_y >=1)) 
	          true
	        else
	          false
	 		end 
		end

		def legal_move(starting_x, starting_y, ending_x, ending_y)
			@board[starting_y][starting_y].can_move?(ending_x, ending_y)
		end

		def piece_already_there(starting_x, starting_y, ending_x, ending_y, color)
			if (@board[ending_x][ending_y] == nil) && 
			   (@board[ending_x][ending_y] != nil) &&
			   (@board[starting_y][starting_x].color != @board[ending_x][ending_y].color)
			  true
			else
			  false
			end
		end
	end

	def put_piece
		@board[1][1] = Rook.new(1, 1, "white")
		@board[1][8] = Rook.new(8, 1, "white")
		@board[1][2] = Bishop.new(2, 1, "white")
		@board[1][7] = Bishop.new(7, 1, "white")
		@board[1][3] = Knight.new(3, 1, "white")
		@board[1][6] = Knight.new(6, 1, "white")
		@board[1][4] = Queen.new(4, 1, "white")
		@board[1][5] = King.new(5, 1, "white")
		@board[2][1] = PawnWhite.new(1, 2, "white")
		@board[2][2] = PawnWhite.new(2, 2, "white")
		@board[2][3] = PawnWhite.new(3, 2, "white")
		@board[2][4] = PawnWhite.new(4, 2, "white")
		@board[2][5] = PawnWhite.new(5, 2, "white")
		@board[2][6] = PawnWhite.new(6, 2, "white")
		@board[2][7] = PawnWhite.new(7, 2, "white")
		@board[2][8] = PawnWhite.new(8, 2, "white")

		@board[8][1] = Rook.new(1, 8, "black")
		@board[8][8] = Rook.new(8, 8, "black")
		@board[8][2] = Bishop.new(2, 8, "black")
		@board[8][7] = Bishop.new(7, 8, "black")
		@board[8][3] = Knight.new(3, 8, "black")
		@board[8][6] = Knight.new(6, 8, "black")
		@board[8][4] = Queen.new(4, 8, "black")
		@board[8][5] = King.new(5, 8, "black")
		@board[7][1] = PawnWhite.new(1, 7, "black")
		@board[7][2] = PawnWhite.new(2, 7, "black")
		@board[7][3] = PawnWhite.new(3, 7, "black")
		@board[7][4] = PawnWhite.new(4, 7, "black")
		@board[7][5] = PawnWhite.new(5, 7, "black")
		@board[7][6] = PawnWhite.new(6, 7, "black")
		@board[7][7] = PawnWhite.new(7, 7, "black")
		@board[7][8] = PawnWhite.new(8, 7, "black")
	end

end