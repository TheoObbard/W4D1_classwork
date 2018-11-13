class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users
  end
  
  def create
    user = User.new(params.require(:user).permit(:username))
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 418
    end
  end
  
  def show
    render json: params
  end
end