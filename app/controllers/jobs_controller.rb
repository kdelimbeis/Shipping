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
    if @job.save!
    # @ship = Ship.create(name: params[:name], location: params[:location], capacity: params[:capacity], user_id: @user.id)
    end
    redirect_to "/"
  end

  def new
    @job = Job.new
  end

  private

    def job_params
      params.require(:job).permit(:description, :origin, :destination, :user_id, :cost, :containers)
    end


end
