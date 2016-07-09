class ConcertsController < ApplicationController

	def index
		@concerts = Concert.months_concerts
		@concert_today = Concert.todays_concerts
	end

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(new_concert_params)
		if @concert.save
			redirect_to concert_path(@concert)
		else
			session[:errors] = @concert.errors.full_messages
			redirect_to new_concert_path
		end
	end

	def show
		@concert = Concert.find(params[:id])
		@comments = @concert.comments.all
		@comment = @concert.comments.new
	end

	def search
		@concert = Concert.where("price <= ?", params[:price].to_f).the_future.order(price: :asc)
	end

	private

	def new_concert_params
		params.require(:concert).permit(
			:artist, :venue, :city, :date, :price, :description
		)
	end

end
