require "sinatra"

get "/" do
	"My first Sinatra app."
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
	@ingredients = ["pepperoni", "cheeze", "mayo"]
	erb :pizza
end

get "/users/:username" do 
	p params
	@username = params[:username]
	erb :profile
end

get "/hours/ago/:hours_ago" do
	@hours_ago = params[:hours_ago]
	@final_time = Time.now - (@hours_ago.to_i*60*60)
	erb :some_time_ago
end