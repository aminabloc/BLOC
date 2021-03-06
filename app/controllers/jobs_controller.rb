class JobsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all.order('created_at DESC')
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
      @job = Job.find(params[:id])
  end

  # GET /jobs/new
  def new
    @job = current_user.jobs.build
    @job.user_id = current_user.id
 
  end

  # GET /jobs/1/edit
  def edit
      @job = Job.find(params[:id])
  end

  def saves
      @user = current_user # before_action :authenticate_user, only: [:likes]
      @job = Job.find(params[:id])
      @user.toggle_like!(@job)
      redirect_to :back
    end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = current_user.jobs.build(job_params)
    @job.user_id = current_user.id
    @job.user_name = current_user.name # assuming the user model has a username field
   


    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
          @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def myjobs
    @jobs = current_user.jobs.order('created_at DESC')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :description, :deadline, :text)
    end
end
