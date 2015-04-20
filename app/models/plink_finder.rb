class PlinkFinder

	def initialize(tweet_array)
		@tweet_array = tweet_array
		@plinks = []
		self.check_for_mentions
	end

	def check_for_mentions
		@tweet_array.each do |tweet|
			if tweet.user_mentions?
				tweet.user_mentions.each do |mention|
					name_dropped = mention.attrs[:name]
					if MusicianVerifier.check(name_dropped)
						@plinks << tweet
					end
				end
			end
		end
		@plinks
	end

end