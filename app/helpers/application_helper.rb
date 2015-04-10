module ApplicationHelper

	def logged_in_or_out
  	if current_user
  		link_to('Log Out', logout_path, :method => :delete)
  	else
  		link_to('Log In', twitter_login_path)
  	end
  end

  def user_greeting
  	if current_user
  		"Hello, #{current_user.handle}."
  	else
  		"Hello, why dontcha just log on in with Twitter?"
  	end
  end

end
