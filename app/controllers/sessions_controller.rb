class SessionsController < ApplicationController
  # skip_before_action :return_to_login_page, only: [:new, :create]
  def new; end

  def create
    @user = User.find_by(name: params[:name])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def destroy
    redirect_to root_path if session[:user_id].nil?
    session[:user_id] = nil
  end
end
