class JobAppsController < ApplicationController
	def index
		@job_apps = current_user.jobApps.all
	end

	def show
		@job_app = find_job_app
		respond_to do |format|
			format.html
			format.js
		end
	end

	def new
		@job_app = current_user.jobApps.new
		respond_to do |format|
			format.html
			format.js
		end
	end

	def edit
		@job_app = find_job_app
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
		@job_app = find_job_app

		@job_app.update(job_app_params)
	end

	def destroy
		@article = find_job_app
		@article.destroy

		redirect_to job_apps_path
	end

	private
	def job_app_params
		params.require(:job_app).permit(:position_name, :company, :status, :url, :notes, :submit_date)
	end

	def find_job_app
		current_user.jobApps.find(params[:id])
	end
end
