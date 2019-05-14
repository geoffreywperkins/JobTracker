class JobAppsController < ApplicationController
	def show
		@job_app = JobApp.find(params[:id])
	end

	def new
	end

	def create
		@job_app = JobApp.new(job_app_params)

		@job_app.save
		redirect_to @job_app
	end

	private
		def job_app_params
			params.require(:job_app).permit(:company, :status, :url, :notes)
		end
end
