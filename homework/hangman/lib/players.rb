class Players
	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
	end

	def set_word
		puts "#{player_1} choose the wrod to be guessed:"
		word_tobe_guessed = gets.chomp
	end

end