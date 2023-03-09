class UsersController < ApplicationController
  def index
  end
  def allusers
      @users = User.all
  end
end
