class StaticPagesController < ApplicationController

  def admin
    @authors = Author.all
    @categories = Category.all
  end
end
