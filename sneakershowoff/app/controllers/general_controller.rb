class GeneralController < ApplicationController
  def front
    @sneakers = Sneaker.all
    @users = User.all
    @makes = Make.includes(:sneakers).most_popular
    @comments = Comment.all
  end
end
