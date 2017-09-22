class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find_by_id(params[:id])
  end

  def create
    @user = current_user
    @job = Job.new(job_params)
    @job.user_id = @user.id

    @ships = Ship.where(:id => params[:select_ships])
    @job.ships << @ships

      if @job.save!
      end
    redirect_to "/"
  end

  def new
    @job = Job.new
  end

  def update
      @job = Job.find(params[:id])
      @job.update_attributes(job_params)
      # @job.ships << ship.id
      @ships = Ship.all

      # redirect_to infos_path
      redirect_to "/"
  end

  private

    def job_params
      params.require(:job).permit(:description, :origin, :destination, :cost, :containers, :ship_id)
    end


end
