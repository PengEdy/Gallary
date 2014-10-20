class StaticPagesController < ApplicationController
  before_action :signed_in_user, only: [:admin]

  def admin
    @authors = Author.all
    @categories = Category.all
  end
end
