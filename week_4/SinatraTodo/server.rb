require_relative("lib/task.rb")
require_relative("lib/todolist.rb")

require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

task1 = Task.new("Buy the milk")
task2 = Task.new("Wash the car")
task3 = Task.new("Make my todo list into a web app")

todo_list = TodoList.new("matt")

todo_list.add_task(task1)
todo_list.add_task(task2)
todo_list.add_task(task3)

get "/" do
	@list = todo_list.tasks
	erb :home
end

get "/new_task" do
	erb :new_task
end

post "/create_task" do
	@task = params[:description]
	todo_list.add_task(Task.new(@task))

	redirect to("/")
end

get "/completed_task/:id" do
	id = params[:id].to_i
	@task = todo_list.find_task_by_id(id)
	@task.complete!

	redirect to("/")
end

get "/delete_task/:id" do
	id = params[:id].to_i
	todo_list.delete_task(id)

	redirect to("/")
end