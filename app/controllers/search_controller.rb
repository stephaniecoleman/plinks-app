class SearchController < ApplicationController

	def index
		if @artist = MusicianVerifier.check(params[:artist])
		else
			redirect_to root_path, alert: "That's not a musician, sorry!" 
		end
		# search for artist in spotify
	end

end