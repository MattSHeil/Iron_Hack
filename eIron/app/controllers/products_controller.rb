class ProductsController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@products = @user.products
	end

	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	# def show
	# end

	def create
		@user = User.find_by(params[:user_id])
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

end
