class GeneralController < ApplicationController
  def front
    @sneakers = Sneaker.all
    @users = User.all
    @makes = Make.all
  end
end
