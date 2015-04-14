class SessionsController < ApplicationController

	def create
		@user = User.find_by_uid(auth_hash[:info][:uid]) || User.create_with_auth_hash(auth_hash)
		session[:user_id] = @user.id
		@timeline = Timeline.new(auth_hash)
		current_user = @user
		redirect_to root_path, :notice => "Signed in!"
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, :notice => "Signed out!"
	end

	private

	def auth_hash
		request.env['omniauth.auth']
	end

end