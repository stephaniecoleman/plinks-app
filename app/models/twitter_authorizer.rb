class TwitterAuthorizer

	def self.get_key_and_secret(auth_hash)
		@oauth_token = auth_hash[:extra][:access_token].params[:oauth_token]
		@oauth_token_secret = auth_hash[:extra][:access_token].params[:oauth_token_secret]	
	end

	def self.configure_twitter_client
		Twitter::REST::Client.new do |config|
	    config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
	    config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
	    config.access_token        = @oauth_token
	    config.access_token_secret = @oauth_token_secret
		end
	end

	def self.make_twitter_client(auth_hash)
		self.get_ke_and_secret(auth_hash)
		self.configure_twitter_client
	end

end