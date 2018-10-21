class PagesController < ApplicationController
  def index
    @products = Product.all
    @reviews = Review.all
  end

  def ai
  end

  def investors
  end

  def about
  end

  def contacts
  end
end
