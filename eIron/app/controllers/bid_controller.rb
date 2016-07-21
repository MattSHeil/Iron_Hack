class BidController < ApplicationController

	def create
		@product = Product.find(params[:id])
		
		@user = User.find_by(email: params[:bid][:email])
		
		@bid = @product.bids.new(user_id: @user.id, product_id: @product.id, amount: params[:bid][:amount])
		if @bid.save
			redirect_to user_product_path(@product.user_id, @product.id)
		# else
		# 	render 'products/show'
		end
	end

end
