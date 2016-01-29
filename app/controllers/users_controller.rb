class UsersController < ApplicationController
  ALLOWED_PARAMS = [:email]

  def create
    @user = User.where(user_params).first_or_initialize
    if @user.new_record?
      success = @user.save
    else
      success = true
    end

    respond_to do |format|
      format.html do
        if success
          session[:email] = @user.email
          redirect_to root_path
        else
          @current_step = 1
          render 'placeholder/index'
        end
      end
    end
  end

  def destroy
  end

  def sign_out
    session[:email] = nil

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  private

  def user_params
    params.require(:user).permit(ALLOWED_PARAMS)
  end
end
