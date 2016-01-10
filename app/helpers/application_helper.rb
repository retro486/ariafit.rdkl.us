module ApplicationHelper
  def current_user
    User.find_by(email: session[:email]) || User.new
  end
end
