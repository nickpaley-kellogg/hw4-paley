class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  # Define the current_user method
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end