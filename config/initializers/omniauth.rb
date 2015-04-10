Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_CONSUMER_SECRET'], lang: 'en'
end


# {:authorize_params => {
#         :force_login => 'true',
#         :lang => 'pt'
#       }
#     }