class GeneralController < ApplicationController
  def front
    @sneakers = Sneaker.all
    @users = User.all
    @makes = Make.includes(:sneakers).all
  end
end
