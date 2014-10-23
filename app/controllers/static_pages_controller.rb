class StaticPagesController < ApplicationController

  def admin
    @authors = Author.all
    @categories = Category.all
    @messages = Message.all
    @videos = Video.all
  end
end
