class ConcertsController < ApplicationController

	def index
		@concerts = Concert.all.order(date: :desc)
	end

	def new
		@concert = Concert.new
	end

	def create
	end

	def show
		@concert = Concert.find(params[:id])
	end

end
