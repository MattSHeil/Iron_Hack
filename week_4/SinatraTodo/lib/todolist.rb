class TodoList
    attr_reader :tasks

    def initialize(user)
    	@tasks = []
    end

    def add_task(task)
    	@tasks.push(task)
    end

    def delete_task(id)
    	@tasks.delete_if do | task |
	    	task.id == id
    	end
    end

    def find_task_by_id(id)
    	task = @tasks.find do | task |
    		task.id == id
    	end
    end

    # def sort_by_created(direction)
    # 	sorted_tasks = @tasks.sort do | task1, task2 |

    # 		if direction == "ASC"
    # 			task1.created_at <=> task2.created_at
    # 		elsif direction == "DSC"
    # 			task2.created_at <=> task1.created_at
	   #  	end
   	#  	end
    # 	sorted_tasks
    # end
end