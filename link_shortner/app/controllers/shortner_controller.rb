class ShortnerController < ApplicationController

	def show
		@link = Shortner.find(params[:id])
	end

	def new
		@link = Shortner.new
	end

	def create
		link = Shortner.create(
			original: params[:shortner][:original], 
			shorturl: Shortner.generate_shorturl(3)
		)

		redirect_to "/links/#{link.id}"
	end

	def index
		link = Shortner.find_by(shorturl: params[:shorturl])

		if link 
			redirect_to link.original
		end
	end

end
