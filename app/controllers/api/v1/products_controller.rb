class Api::V1::ProductsController < ApplicationController
    before_action :find_product, only: [:update]

	def index
		@products = Product.all
		render json: @products 
	end

	def create
    
		@product = Product.create(product_params)

		render json: @product, status: 200
	end

  def show
    @product = Product.find(params[:id])

    render json: @product, status: 200  
  end

	def update
    
	 @product = Product.find(params[:id])
     @product.update(product_params)
     if @product.save
      render json: @product, status: :accepted
     else
      render json: { errors: @product.errors.full_messages }, status: :unprocessible_entity
    end
   end

   def destroy
   	@product = Product.find(params[:id])
   	@product.delete

   	render json: {productId: @product.id}
   end
  

  private

  def product_params
    params.permit(:name, :description, :price, :image, :stock)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
