class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find_by_id(params[:id])
  end

  def create
    @user = current_user
    @ship = Ship.new(ship_params)
    @ship.user_id = @user.id
    if @ship.save!
    # @ship = Ship.create(name: params[:name], location: params[:location], capacity: params[:capacity], user_id: @user.id)
    end
    redirect_to "/"
  end

  def new
    @ship = Ship.new
  end


  private

    def ship_params
      params.require(:ship).permit(:name, :location, :capacity, :user_id)
    end


end
