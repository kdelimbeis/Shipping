class UsersController < ApplicationController
  def index
      @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
  end

  def edit
  end
end
