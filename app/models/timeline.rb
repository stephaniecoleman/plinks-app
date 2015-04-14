class Timeline

	def initialize(auth_hash)
		@auth_hash = auth_hash
		@tweets = []
		@client = self.make_twitter_client
		self.get_tweets
	end

	def get_key_and_secret
		@oauth_token = @auth_hash[:extra][:access_token].params[:oauth_token]
		@oauth_token_secret = @auth_hash[:extra][:access_token].params[:oauth_token_secret]	
	end

	def configure_twitter_client
		Twitter::REST::Client.new do |config|
	    config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
	    config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
	    config.access_token        = @oauth_token
	    config.access_token_secret = @oauth_token_secret
		end
	end

	def make_twitter_client
		get_key_and_secret
		configure_twitter_client
	end

	def get_tweets
		# timeline = @client.user_timeline(:count => 199)
		timeline = @client.user_timeline(screen_name: "anaismitchell", count: 199,include_rts: false)
		last_id = timeline.last.id - 1

	  4.times do
	    sleep(1)
	    timeline = timeline + @client.user_timeline(screen_name: "anaismitchell", count: 199, include_rts: false, max_id: last_id)
	    last_id = timeline.last.id - 1
	  end
	  timeline.each do |tweet_obj|
	    @tweets << tweet_obj
	  end
	  binding.pry
	end

end