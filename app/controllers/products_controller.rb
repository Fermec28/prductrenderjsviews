class ProductsController < ApplicationController
  def index
    @products = Product.all
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
  end

  def new
    @product = Product.new
  end

  def destroy
    @product = Product.find(params[:id])
    @id = @product.id
    @product.destroy
  end

  def edit
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name,:price)
  end
end
