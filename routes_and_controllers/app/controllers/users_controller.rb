class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users
  end
  
  def create
    user = User.new(params.require(:user).permit(:email, :name))
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end
  
  def show
    render json: params
  end
end