class CommentsController < ApplicationController

	def create
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new(comment_params)		
		if @comment.save
			redirect_to concert_path(@concert)
		else
			session[:errors] = @concert.errors.full_messages
			redirect_to concert_path(@concert)
		end
	end

	private

	def comment_params
		params.require(:comment).permit(
			:comment
		)
	end

end
