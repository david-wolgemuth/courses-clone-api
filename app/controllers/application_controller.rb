class ApplicationController < ActionController::Base
	helper_method :current_user

	def current_user
		@current_user = User.find_by_auth_token request.headers['X-Auth-Token']
	end
end
