class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      flash[:success] = t "flash.signup_success"
      redirect_to @user
    else
      flash[:success] = t "flash.signup_fail"
      render "new"
    end
  end

  def show
    redirect_to signup_path unless @user = User.find_by(params[:id])
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end
end
