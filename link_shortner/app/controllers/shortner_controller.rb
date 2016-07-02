class ShortnerController < ApplicationController

	def index
		link = Shortner.find_by(shorturl: params[:shorturl])

		if link 
			redirect_to link.original
		end
	end

end
