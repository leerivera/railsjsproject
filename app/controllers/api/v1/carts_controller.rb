class Api::V1::CartsController < ApplicationController
	
	def index
		@carts = Cart.all 
		render json: @carts
	end

	def create
		@cart = Cart.create(cart_params)

		render json: @cart, status: 200
	end

	def update
		@cart = Cart.find(params[:id])
		render json: @cart, status: 200
	end

	private

	def cart_params
		params.permit(:user_id, :cart_id)

	end

	def find_cart
		@cart = Cart.find(params[:id])
	end
end
