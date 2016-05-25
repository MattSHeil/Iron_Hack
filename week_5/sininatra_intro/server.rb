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