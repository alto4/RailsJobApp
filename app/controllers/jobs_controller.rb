class JobsController < ApplicationController

  # Index method - gets all jobs 
  def index 
    @jobs = Job.all
    render 'jobs/index'
  end

  # Show method - gets details of a single job
  def show 
    @job = Job.find_by(id: params[:id])

    if @job 
      render 'jobs/show'
    end 
  end 

  # Create method - creates a new job
  def create 
    @job = Job.new(job_params)

    if @job.save 
      render 'jobs/create'
    end 
  end

end
