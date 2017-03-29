class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Bricked Electronics"
      redirect_to @user
    else
      render 'new'
    end
  end

  def login
  
    if @user.valid
      flash[:success] = "Logged in successfully"
    else
      flash[:failure] = "Logged in successfully"
    end
  end
  
  private
  
    def user_params
      params.require("user").permit(:name, :email)
    end
end