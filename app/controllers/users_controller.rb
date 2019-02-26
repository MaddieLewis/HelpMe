class UsersController < ApplicationController

  # def show
  #   @user = current_user
  #   @tasks = @user.tasks
  # end
  def show
    @user = User.find(params[:id])
  end
end
