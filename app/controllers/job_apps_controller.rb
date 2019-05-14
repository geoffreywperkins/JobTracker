class JobAppsController < ApplicationController
	def index
		@job_apps = JobApp.all
	end

	def new
	end

	def create
	end
end
