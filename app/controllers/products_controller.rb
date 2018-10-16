class ProductsController < ApplicationController

  def index
    @products = Product.all[0..5]
    @reviews = Review.all[0..1]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save!
      redirect_to root_path
    else
      redirect_back fallback_location: root
    end
  end

  private
  def product_params
    params.require(:product).permit(:title, :price)
  end

end
