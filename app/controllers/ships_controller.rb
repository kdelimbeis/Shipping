class ShipsController < ApplicationController
  def index
  end

  def show
    @ship = Ship.all
  end

  def create
    @user = current_user

    Ship.create(name: params[:name], location: params[:location], capacity: params[:capacity], user_id: @user.id)
    redirect_to "/"
  end

  def new
    @ship = Ship.new
  end

end
