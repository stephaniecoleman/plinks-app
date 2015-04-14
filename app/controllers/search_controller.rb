class SearchController < ApplicationController

	def index
		binding.pry
		MusicianVerifier.check(params[:artist])
		# search for artist in spotify
	end

end