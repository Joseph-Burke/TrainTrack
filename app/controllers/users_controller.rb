class UsersController < ApplicationController
  # skip_before_action :return_to_login_page, only: [:new, :create]
  def index
    redirect_to root_path if session[:user_id].nil?
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @user = User.find(params[:id])
    @transactions = Transaction.where(user_id: @user.id).select { |tran| !tran.nil? }
    @external_transactions = Transaction.where(user_id: @user.id).select { |tran| tran.nil? }
    @groups = Group.all
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
