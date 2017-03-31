class SessionsController < ApplicationController

	def create
		session[:user_id] = nil
		session[:admin_level] = nil
		user = User.find_by_email params[:email]
		if user.nil? or not user.authenticate params[:password]
			render :json => { message: "Unsuccessful Authentification", user: nil }, :status => 404
		else
			session[:user_id] = user.id
			session[:admin_level] = user.admin_level
			render :json => { message: "Successful Authentification", user: user.stripped }
		end
	end

	def destroy
		session[:user_id] = nil
		session[:admin_level] = nil
	end

end
