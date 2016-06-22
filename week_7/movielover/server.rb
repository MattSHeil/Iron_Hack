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
	
	if @thechosenones.length <= 2 
		tryagain = "Try again"
		session[:tryagain] = tryagain
		redirect "/" 
	else 
		@correctmovie = @thechosenones.sample
	
		@question_1 = "Which movie was released in #{@correctmovie.year}???"

		@question_2 = "Which movie has the length of #{@correctmovie.length} minutes ???"

		@question_3 = "Which movie was directed by  #{@correctmovie.director}???"

		@questions = [@question_1, @question_2, @question_3]

		@the_question = @questions.sample
	end

	erb(:movie_picker)
end

