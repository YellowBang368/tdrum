class PagesController < ApplicationController
  def index
    @products = Product.all
    @reviews = Review.all
  end

  def ai
  end

  def teta
  end

  def investors
  end

  def howtoplay
  end

  def effects
  end

  def blog
  end

  def about
  end

  def contacts
  end
end
