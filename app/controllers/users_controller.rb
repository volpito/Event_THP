class UsersController < ApplicationController
  before_action :authenticate_user!, :user
  def show
  
  end

  def user
    @user = User.find(params['id'])
    if current_user.id == @user.id
    else
      redirect_to root_path
      flash[:danger]= "Bien essayé petit malin ! ;P"
    end
  end
  
end
