class SessionsController < ApplicationController

	def create
		@user = User.find_by_uid(auth_hash[:uid]) || User.create_with_auth_hash(auth_hash)
		session[:user_id] = @user.id
		@client = TwitterAuthorizer.connect_twitter_client(auth_hash)
		binding.pry
		@client.user(auth_hash[:uid])	

		# @tweets = @tweets.get_tweets
		PlinkFinder.new(@tweets)
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