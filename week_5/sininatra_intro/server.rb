require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

users = { 
	josh: "sword",
	faraz: "password",
	matt: "catan"
}


get "/" do
	"My first Sinatra app."
end

get "/login" do
	erb :login
end

post "/login_validator" do

	@login = params[:login]
	@password = params[:password]

	if users.has_key?(@login.to_sym) && @password == users[@login.to_sym]
		
		session[:user] = @login
		redirect to("/users/#{@login}")
	else
		redirect to("/login") 
	end

end

get "/hi" do
	@greeting = "Hows it going dude!"
	erb :hi
end

get "/about" do
	erb :about
end

get "/time" do
	@timetoday = Time.now
	erb :time
end

get "/pizza" do
	@ingredients = ["pepperoni", "cheeze", "mayo", "mushrooms"]
	erb :pizza
end

get "/users/:username" do 
	@username = params[:username]

	erb :profile
end

get "/session_test/:text" do
	text = params[:text]
	session[:save_value] = text
end

get "/session_show" do
	@my_text = session[:save_value]
	erb :session_show
end

get "/hours/ago/:hours_ago" do
	@hours_ago = params[:hours_ago]
	@final_time = Time.now - (@hours_ago.to_i*60*60)
	erb :some_time_ago
end