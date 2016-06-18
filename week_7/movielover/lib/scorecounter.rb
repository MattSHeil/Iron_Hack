class ScoreCounter
	attr_accessor :total :wrong
	def initialize
		@total = 1
		@wrong = 0
	end

	def add_total
		@total += 1
	end

	def add_wrong
		@wrong += 1
	end
end