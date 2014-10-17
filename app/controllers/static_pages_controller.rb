class StaticPagesController < ApplicationController
  def about
  end

  def admin
    @authors = Author.all
    @categories = Category.all
  end
end
