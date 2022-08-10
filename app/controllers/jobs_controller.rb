class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path(@job)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @jobs = Job.all
  end

  private

  def job_params
    params.require(:job).permit(
      :position,
      :company,
      :link
    )
  end

end
