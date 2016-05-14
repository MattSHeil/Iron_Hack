require('imdb')

trek_search = Imdb::Search.new('Star Trek')

movies = trek_search.new

p movies
