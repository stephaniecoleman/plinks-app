class MusicianVerifier

	def self.check(name)
		artist = Echonest::Artist.new(ENV['ECHO_NEST_API_KEY'], name)
		begin
			artist.songs
		rescue Echonest::Error
			false
		else
			artist
		end
	end
end