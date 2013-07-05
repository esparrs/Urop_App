class UsersController < ApplicationController
  before_filter :authenticate_user!

  def signup
  end

  #as defined by Rails Tutorial
  def create
  	@user = User.new(user_params)
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  private

  	#as told to implement by Rails Tutorial
    def user_params
      params.require(:user).permit(:name, :username, :email, :password,
                                   :password_confirmation)
    end
end
