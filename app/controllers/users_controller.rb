class UsersController < ApplicationController

	def current_user
		@user = current_user
	end
end
