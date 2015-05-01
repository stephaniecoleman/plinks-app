class SessionsController < ApplicationController
	after_action :get_twitter_data, only: [:create]

	def create
		@user = User.find_by_uid(auth_hash[:uid]) || User.create_with_auth_hash(auth_hash)
		session[:user_id] = @user.id
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

	def get_twitter_data
		@client = TwitterAuthorizer.connect_twitter_client(auth_hash)
		@ids = @client.friend_ids.attrs[:ids]
		@ids.collect do |id|
			@client.user(id).name
		end
	end

end