# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
    # The login form will be rendered here
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      # Set the user id in the session to log the user in
      session[:user_id] = user.id
      redirect_to places_path, notice: 'Logged in successfully.'
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new  # Show the login form again if authentication fails
    end
  end

  def destroy
    # Logout the user by clearing the session
    session[:user_id] = nil
    redirect_to login_path, notice: 'Logged out successfully.'
  end
end