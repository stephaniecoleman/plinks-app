class PlinksController < ApplicationController

	def index
		@client = TwitterAuthorizer.connect_twitter_client(auth_hash)
		# @client.user(auth_hash[:uid])	
		# @tweets = @tweets.get_tweets
		timeline = TimelineGrabber.new(@client)
		@tweets = timeline.get_tweets
		@plinks = PlinkFinder.new(@tweets)
	end

	def show
	end


end
