class SearchController < ApplicationController

	def index
		MusicianVerifier.check(params[:artist])
		# search for artist in spotify
	end

end