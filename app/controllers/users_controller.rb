class UsersController < ApplicationController
   skip_before_action :authenticate_user!
  # def show
  #   @user = current_user
  #   @tasks = @user.tasks
  # end
  def show
    @user = User.find(params[:id])
  end
end
