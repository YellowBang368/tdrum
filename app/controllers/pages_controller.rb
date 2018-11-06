class PagesController < ApplicationController
  def index
    @products = Product.all
    @reviews = Review.all
  end

  def ai
  end

  def proc
    @posts = posts_with_topic("техпроцесс", Post.all)
  end

  def teta
    @posts = posts_with_topic("интерактивный инструмент", Post.all)
  end

  def investors
  end

  def howtoplay
    @posts = posts_with_topic("как играть", Post.all)
  end

  def effects
    @posts = posts_with_topic("эффекты", Post.all)
  end

  def about
  end

  def contacts
  end

  private
  def posts_with_topic(topic, posts)
    result = []
    posts.each do |post|
      result << post if post.topic.include?(topic)
    end
    return result
  end
end
