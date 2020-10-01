module ApplicationHelper
  # Getter and setter for logged_in_user_id
  def current_user_id
    session[:user_id]
  end

  # Getter and setter for logged in User object
  def current_user
    User.find(current_user_id)
  end

  def logged_in?
    session[:user_id].nil?
  end

end
