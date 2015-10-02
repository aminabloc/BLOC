class JappsController < ApplicationController
  before_action :set_japp, only: [:show, :edit, :update, :destroy]

  # GET /japps
  # GET /japps.json
  def index
    @japps = current_users.japps
  end

  # GET /japps/1
  # GET /japps/1.json
  def show
  end

  # GET /japps/new
  def new
    @japp = Japp.new
  end

  # GET /japps/1/edit
  def edit
  end

  # POST /japps
  # POST /japps.json
  def create
    @job = Job.find(params[:job_id])
    @japp = @job.japps.create(params[:japp].permit(:statement))

    redirect_to job_path(@job)  
  end

  # PATCH/PUT /japps/1
  # PATCH/PUT /japps/1.json
  def update
    respond_to do |format|
      if @japp.update(japp_params)
        format.html { redirect_to @japp, notice: 'Japp was successfully updated.' }
        format.json { render :show, status: :ok, location: @japp }
      else
        format.html { render :edit }
        format.json { render json: @japp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /japps/1
  # DELETE /japps/1.json
  def destroy
    @japp.destroy
    respond_to do |format|
      format.html { redirect_to japps_url, notice: 'Japp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_japp
      @japp = Japp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def japp_params
      params.require(:japp).permit(:statement, :resume, :cover)
    end
end
