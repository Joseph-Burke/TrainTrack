class UsersController < ApplicationController
  def index
    redirect_to root_path if session[:user_id].nil?
    @users = User.all.includes(avatar_attachment: [:blob])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params.except(:avatar))
    @user.valid?
    if @user.save
      session[:user_id] = @user.id
      @user.avatar.attach(params[:user][:avatar])
      redirect_to user_path(@user)
    else
      render :new if @user.errors.any?
      # redirect_to root_path if @user.errors.any?
    end
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @user = User.find(params[:id])
    @transactions = Transaction.where(user_id: @user.id).reject(&:nil?)
    @external_transactions = Transaction.where(user_id: @user.id).select(&:nil?)
    @groups = Group.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar)
  end
end
