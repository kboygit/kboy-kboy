class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by(params[:id])
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      log_in @user
      flash[:success] = "Success my friend!"
      redirect_to user_url(@user)
      # redirect_to @user # this work as well #
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name , :email, :password,
                                 :password_confirmation)
  end
end
