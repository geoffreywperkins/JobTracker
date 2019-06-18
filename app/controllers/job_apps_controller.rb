class JobAppsController < ApplicationController
	def index
		@job_apps = current_user.jobApps.all
	end

	def show
		@job_app = current_user.jobApps.find(params[:id])
	end

	def new
		@job_app = current_user.jobApps.new
	end

	def edit
		@job_app = current_user.jobApps.find(params[:id])
	end

	def create
		@job_app = current_user.jobApps.new(job_app_params)

		if @job_app.save
			redirect_to job_apps_path
		else
			render 'new'
		end
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
		params.require(:job_app).permit(:position_name, :company, :status, :url, :notes, :submit_date)
	end
end
