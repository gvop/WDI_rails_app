class AdminController < ApplicationController
  def admin_page
    @sneakers = Sneaker.all
    @users = User.all
    @makes = Make.all
  end
end
