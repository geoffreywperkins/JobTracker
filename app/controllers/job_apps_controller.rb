class JobAppsController < ApplicationController
	def index
		@job_apps = current_user.jobApps.all
	end

	def new
	end

	def create
		# @user = User.find(params[:user_id])
		@job_app = current_user.jobApps.new(job_app_params)

		@job_app.save
		redirect_to @job_app
	end

	private
		def job_app_params
			params.require(:job_app).permit(:company, :status, :url, :notes)
		end
end
