source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use postgresql as the database for Active Record
gem 'pg'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Figaro to setting environment variables
gem 'figaro'

# Draper adds an object-oriented layer of presentation logic. Helps us keep logic out of the views!
gem 'draper', '~> 1.3'

# Use Omniauth and Omniauth-twitter to authenticate users through Twitter
gem 'omniauth'
gem 'omniauth-twitter'

# Using the awesome Twitter gem to access the Twitter API
gem 'twitter'

# Using the Echo Nest API to verify musician status. (This gem doesn't have full coverage of the Echo Nest API, so might need to write my own wrapper.)
gem 'echonest-ruby-api'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :test do
  # faker generates names, email addresses, and other placeholders for factories.
  gem 'faker'
  # capybara makes it easy to programatically simulate your users’ interactions with your application.
  gem 'capybara'
  # database_cleaner helps make sure each spec run in RSpec begins with a clean slate, by cleaning data from the test database.
  gem 'database_cleaner'
  # launchy does one thing, but does it well: It opens your default web browser on demand to show you what your application is rendering.
  gem 'launchy'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'pry'
  # rspec-rails includes RSpec itself in a wrapper to add some extra Rails-specific features.
  gem 'rspec-rails'
  # factory_girl_rails replaces Rails’ default fixtures for feeding test data to the test suite with much more preferable factories.
  gem 'factory_girl_rails'
  # guard-rspec watches your application and tests and runs specs for you automatically when it detects changes.
  gem 'guard-rspec'
end

group :production do
	# Use rails_12factor to serve static assets such as images and stylesheets in Heroku
	gem 'rails_12factor'
end