class MovieSearcher
	def initialize (keyword)
		@keyword = keyword
		@ninemovies = []
	end

	def search
		searching = Imdb::Search.new(@keyword)
		@faraz = searching.movies
		@bob = @faraz.take(20)
		@bob.each do | movies |
			if movies.poster
				@ninemovies.push(movies)
			end
		end
		@ninemovies[0..8]
	end
end
