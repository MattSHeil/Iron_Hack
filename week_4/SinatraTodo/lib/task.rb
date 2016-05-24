class Task
    attr_reader :content, :id, :completed_status
    @@current_id = 1
    def initialize(content)
        @content = content
        @created_at = Time.new
        @updated_at = nil 
        @id = @@current_id
        @@current_id += 1
        @completed_status = false
    end

    def complete?
    	@completed_status
	end

	def complete!
		@completed_status = true
	end

	def make_incomplete!
		@completed_status = false
	end

	def update_content!(updated)
		@content = updated
		@updated_at = Time.new 
	end

end



# task = Task.new("Buy the milk")
# puts task.id
# # 1
# task2 = Task.new("Wash the car")
# puts task2.id
# # 2