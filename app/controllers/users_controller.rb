class UsersController < ApplicationController
  before_action :logged_in_user, only: %i(index edit update destroy)
  before_action :correct_user, only: %i(edit update)
  before_action :admin_user, only: :destroy
  before_action :find_user, only: %i(show edit update destroy)

  def index
    @users = User.page params[:page]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      @user.send_activation_email
      flash[:info] = t "flash.activate_check"
      redirect_to root_url
    else
      flash[:danger] = t "flash.signup_fail"
      render :new
    end
  end

  def show
    return @microposts = @user.microposts.page(params[:page]) if @user
    redirect_to signup_path
  end

  def edit; end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = t "flash.profile_update_succcess"
      redirect_to @user
    else
      flash[:danger] = t "flash.profile_update_fail"
      render :edit
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = t "flash.user_delete_success"
    else
      flash[:danger] = t "flash.user_cannot_delete"
    end
    redirect_to users_url
  end

  def following
    @title = t "following"
    @user  = User.find_by id: params[:id]
    @users = @user.following.page params[:page]
    render "show_follow"
  end

  def followers
    @title = t "followers"
    @user  = User.find_by id: params[:id]
    @users = @user.followers.page params[:page]
    render "show_follow"
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password,
      :password_confirmation
  end

  def correct_user
    @user = User.find_by id: params[:id]
    redirect_to(root_url) unless current_user?(@user)
  end

  def admin_user
    redirect_to root_url unless current_user.admin?
  end

  def find_user
    @user = User.find_by id: params[:id]
  end
end
