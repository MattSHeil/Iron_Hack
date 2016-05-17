require_relative('board')

class Game
	def initialize(board)
		@board = board
		@Player_1 = "X"
		@Player_2 = "O"
		@coutner = 0 
	end

	def current_player
    	turn_1 = " "
    	turn_2 = " "
    	current_player = " "
        if @coutner.odd?
        	current_player = @Player_1
        else 
            current_player = @Player_2
        end
    end

    def take_turns
       	puts "#{current_player} your turn"
        user_input = gets.chomp
        @board.add_character(user_input.split(","), current_player)
        @board.show_board
            if @board.winner?
            	puts "You Wom ... For Now ... "
            elsif @coutner >= 8
            	puts "Too bad ... its draw ..."
            else
            	@coutner += 1
            	take_turns
            end
	
    end

end