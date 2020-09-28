module ApplicationHelper
  # Getter and setter for logged_in_user_id
  def logged_in_user_id
    session[:user_id]
  end

  def logged_in_user_id=(id)
    session[:user_id] = id
  end

  # Getter and setter for logged in User object
  def current_user
    return nil if logged_in_user_id.nil?

    User.find(logged_in_user_id)
  end

  def current_user=(name)
    logged_in_user_id=(User.find_by(name: name).id)
  end


end
