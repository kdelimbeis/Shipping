class OpenJobsController < ApplicationController
end

def new
  @open_job = Open_job.new
end
