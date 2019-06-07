class WelcomeController < ApplicationController
	layout "welcome"

	def index
		if current_user
			redirect_to job_apps_url
		end
	end
end
