class ProductsController < ApplicationController

  def main
    @products = Product.all[0..5]
    @reviews = Review.all[1..2]
  end

  def index
    @products = Product.all
    @accessories = Accessory.all
    @small_drums = Product.where(size: 13);
    @medium_drums = Product.where(size: 15);
    @big_drums = Product.where(size: 25);
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

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:title, :price, :size)
  end

end
