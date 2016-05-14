class Knight < Piece
	def can_move?(ending_x, ending_y)
		difference_x = @starting_x - ending_x
		difference_y = @starting_y - ending_y
	
		if ((difference_x.abs == 1) && (difference_y.abs == 2)) ||
		   ((difference_x.abs == 2) && (difference_y.abs == 1))
		  true
		else
		  false
		end
	end
end