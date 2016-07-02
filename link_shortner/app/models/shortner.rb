class Shortner < ActiveRecord::Base

	ALPHABET = [('a'..'z').to_a, ('A'..'Z').to_a].flatten

	def self.generate_shorturl(link_legth)
		ALPHABET.sample(link_length).join
	end

end
