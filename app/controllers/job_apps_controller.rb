class JobAppsController < ApplicationController
	def index
		@job_apps = current_user.jobApps.all
	end

	def new
	end

	def edit
		@job_app = current_user.jobApps.find(params[:id])
	end

	def create
		# @user = User.find(params[:user_id])
		@job_app = current_user.jobApps.new(job_app_params)

		@job_app.save
		redirect_to job_apps_path
	end

	def update
		@job_app = current_user.jobApps.find(params[:id])

		if @job_app.update(job_app_params)
			redirect_to job_apps_path 			# HOW TO REDIRECT TO INDEX PAGE
		else
			render "edit"
		end
	end

	private
		def job_app_params
			params.require(:job_app).permit(:company, :status, :url, :notes)
		end
end
