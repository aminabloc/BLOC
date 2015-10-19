class JappsController < ApplicationController
  def index
    @job = Job.find(params[:job_id])  
    @japps= @job.japps.all
  end

  def new
    @job = Job.find(params[:job_id])
    @japp = jobs.japps.build
  end
  
  def show
    @job = Job.find(params[:job_id])
  end

  def create
    @job = Job.find(params[:job_id])
    @japp = @job.japps.create(params[:japp].permit(:statement, :resume, :cover))

    redirect_to job_path(@job)
  end

  

  def destroy
    @job = Job.find(params[:job_id])
    @japp = @job.japps.find(params[:id])
    @japp.destroy

    redirect_to job_path(@job)
  end
end