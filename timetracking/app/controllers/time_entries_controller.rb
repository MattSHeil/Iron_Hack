class TimeEntriesController < ApplicationController
	def create
		@project = Project.find(params[:project_id])
		time_entry_params = params.require(:time_entry).permit(
			:hours, :minutes, :date
		)
		@time_entry = @project.time_entries.new(time_entry_params)
		if @time_entry.save
			# redirect_to action: 'index', controller: 'time_entries', project_id: @project_id 
			redirect_to project_time_entries_path(@project)
		else
			render 'new'
		end
	end

	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries
	end

	def new
  		@project = Project.find(params[:project_id])
  		@time_entry = @project.time_entries.new	
	end

end
