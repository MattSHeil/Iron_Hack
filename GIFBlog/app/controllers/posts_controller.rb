class PostsController < ApplicationController

	def index

		@posts = Post.low_rated_index(10)
		case params[:comand]
		when params[:comand] = "top"
			@posts = Post.low_rated_index(10)
		when params[:comand] = "newer"
			@posts = Post.sotr_by_date(10)
		when params[:comand] = "votes"
			@posts = Post.sotr_by_vote(10)
		else 
			@posts = Post.all
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new  
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to :posts
		else
			render "new"
		end
	end

	def vote_up
		@post = Post.find(params[:id])
		@post.voteUp(params[:id])		
		redirect_to post_path(params[:id])
	end

	def vote_down
		@post = Post.find(params[:id])
		@post.voteDown(params[:id])
		redirect_to post_path(params[:id])
	end

	private 

	def post_params
		params.require(:post).permit(
			:title, :gif_url, label_ids: []
		)
	end
end
