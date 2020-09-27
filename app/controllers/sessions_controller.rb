class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user_id] = User.find_by(name: params[:name])
  end

  def destroy
    session[:user_id] = nil
  end
end
