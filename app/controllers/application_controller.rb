class ApplicationController < ActionController::Base
  # before_action :return_to_login_page, except: [:return_to_login_page]

  def return_to_login_page
    redirect_to root_path if session[:user_id].nil?
  end
end
