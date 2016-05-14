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

	def can_move?(starting_coords, ending_coords)
		starting_x = starting_coords[0]
		starting_y = starting_coords[1]
		ending_x = starting_coords[0]
		ending_y = starting_coords[1]

		@board[starting_y][starting_x].can_move?(ending_y, ending_x)
	end

	def on_board?(ending_x, ending_y)
		if (ending_x <= 0 && ending_x >= 0) && (ending_y <= 0 && ending_y >= 0)
	end 

	def put_piece
		@board.push[1][1]Rook.new(1, 1)
		@board.push[1][9]Rook.new(8, 1)
		@board.push[1][2]Bishop.new(2, 1)
		@board.push[1][7]Bishop.new(7, 1)
		@board.push[1][3]Knight.new(3, 1)
		@board.push[1][6]Knight.new(6, 1)
		@board.push[1][4]Queen.new(4, 1)
		@board.push[1][5]King.new(5, 1)
		@board.push[2][1]PawnWhite.new(1, 2)
		@board.push[2][2]PawnWhite.new(2, 2)
		@board.push[2][3]PawnWhite.new(3, 2)
		@board.push[2][4]PawnWhite.new(4, 2)
		@board.push[2][5]PawnWhite.new(5, 2)
		@board.push[2][6]PawnWhite.new(6, 2)
		@board.push[2][7]PawnWhite.new(7, 2)
		@board.push[2][8]PawnWhite.new(8, 2)

		@board.push[8][1]Rook.new(1, 8)
		@board.push[8][8]Rook.new(8, 8)
		@board.push[8][2]Bishop.new(2, 8)
		@board.push[8][7]Bishop.new(7, 8)
		@board.push[8][3]Knight.new(3, 8)
		@board.push[8][6]Knight.new(6, 8)
		@board.push[8][4]Queen.new(4, 8)
		@board.push[8][5]King.new(5, 8)
		@board.push[7][1]PawnWhite.new(1, 7)
		@board.push[7][2]PawnWhite.new(2, 7)
		@board.push[7][3]PawnWhite.new(3, 7)
		@board.push[7][4]PawnWhite.new(4, 7)
		@board.push[7][5]PawnWhite.new(5, 7)
		@board.push[7][6]PawnWhite.new(6, 7)
		@board.push[7][7]PawnWhite.new(7, 7)
		@board.push[7][8]PawnWhite.new(8, 7)
	end

end