class King < Piece
	def can_move?(ending_x, ending_y)
		difference_x = @starting_x - ending_x
		difference_y = @starting_y - ending_y
	
		if ((difference_x.abs == 1) && (difference_y.abs == 1)) ||
		   ((difference_x.abs == 0) && (difference_y.abs == 1 )) ||
		   ((difference_x.abs == 1) && (difference_y.abs == 0 ))
	      true
		else	
		  false
		end
	end
end