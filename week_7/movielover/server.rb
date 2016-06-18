require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative "lib/moviesearcher"

enable :sessions

get "/" do
	if session[:tryagain] != nil
		@message = session[:tryagain] 
		session[:tryagain] = nil 
	end
	erb(:home)
end

post "/movie_picker" do
	@keyword = params[:keyword]
	@movies = MovieSearcher.new(@keyword)
	@thechosenones = @movies.search
	@thequestion = @movies.random


	if @thechosenones.length <= 2 
		tryagain = "Try again"
		session[:tryagain] = tryagain
		redirect "/" 
	else 
		@correctmovie = @thechosenones.sample
		
		@correctanswer = "#{@correctmovie} + #{@thequestion}"
	end

	erb(:movie_picker)
end

