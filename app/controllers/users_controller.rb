class UsersController < ApplicationController
  def new
    @user = User.new
  end
    
  def show
    @user = User.find(params[:id])
    #@reviews = @user.reviews.paginate(page: params[:page])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Bricked Electronics"
      redirect_to @user
    else
      render 'account'
    end
  end
  
  def account
    new
  end
  private
  
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end