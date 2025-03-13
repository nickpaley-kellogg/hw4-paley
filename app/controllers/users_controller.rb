class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # Redirect to login or places index after a successful signup
      redirect_to login_path, notice: 'User was successfully created. Please log in.'
    else
      # Render the signup form again if there are validation errors
      render :new
    end
  end

  private

  def user_params
    # Ensure the password and password confirmation are included in the permitted parameters
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :first_name, :last_name)
  end
end
