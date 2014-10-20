class StaticPagesController < ApplicationController

  def admin
    @authors = Author.all
    @categories = Category.all
    @messages = Message.all
  end
end
