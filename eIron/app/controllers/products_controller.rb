class ProductsController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@product = @user.products.find_by(params[:id])
		@products = @user.products
	end

	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	def create
		@user = User.find(params[:user_id])
		pruduct_params = params.require(:product).permit(
			:name, :description, :deadline
		)
		@product = @user.products.new(pruduct_params)
		if @product.save
			redirect_to user_products_path(@user)
		else
			render 'new'
		end
	end	

	def show
		@user = User.find(params[:user_id])
		@product = @user.products.find_by(params[:id])
		@bid = @user.bids.new
		@bids = @product.bids.all.last_bids(10)
		@winner = @bids.first
	end

	def all
		@product = Product.all
	end

end
