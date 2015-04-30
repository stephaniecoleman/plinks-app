class TimelineGrabber

	def initialize(client)
		@client = client
		@tweets = []
	end

	def get_tweets
		# timeline = @client.user_timeline(:count => 199)
		timeline = @client.user_timeline(screen_name: "anaismitchell", count: 199, include_rts: false)
		# last_id = timeline.last.id - 1

		# 1.times do
	 #  # 4.times do
	 #    sleep(1)
	 #    timeline = timeline + @client.user_timeline(screen_name: "anaismitchell", count: 199, include_rts: false, max_id: last_id)
	 #    last_id = timeline.last.id - 1
	 #  end
	  timeline.each do |tweet_obj|
	    @tweets << tweet_obj
	  end
	  @tweets
	end

end