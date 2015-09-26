class JobappsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
        @jobapp = Jobapp.all.order('created_at DESC')
	end

	def new
		@jobapp = current_user.jobapps.build
	end

	def create
		@jobapp = current_user.jobapps.build(job_params)
	end

	def show
		@jobapp = Jobapp.find(params[:id])
	end

	def edit
		@jobapp = Jobapp.find(params[:id])
	end

	def update
		@jobapp = Jobapp.find(params[:id])
	end


	def destroy
		@jobapp = Jobapp.find(params[:id])
		@jobapp.destroy
		redirect_to root_path 
	end


	private

	def job_params
		params.require(:jobapp).permit(:title, :body)
	end
end


