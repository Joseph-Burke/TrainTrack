class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(name: params[:name])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy
    redirect_to root_path if session[:user_id].nil?
    session[:user_id] = nil
    redirect_to root_path
  end
end
