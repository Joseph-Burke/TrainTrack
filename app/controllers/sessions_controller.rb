class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(name: params[:name])
    session[:user_id] = @user.id
  end

  def destroy
    session[:user_id] = nil
  end
end
