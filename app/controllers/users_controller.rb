class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @actions = UserAction.where(user_id: @user).order('created_at DESC').limit(10)
  end
end
