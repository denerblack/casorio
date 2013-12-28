source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
#group :assets do
  gem 'therubyracer', platforms: :ruby
  gem 'less-rails'
  gem 'twitter-bootstrap-rails'
  #gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
  #                                :github => 'anjlab/bootstrap-rails'
  gem 'twitter-bootswatch-rails', '~> 3.0.1'
  gem 'twitter-bootswatch-rails-fontawesome', '~> 4.0'
  gem 'twitter-bootswatch-rails-helpers'
#end

group :production do
  gem 'pg'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'unicorn'
end

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem "rspec-rails", :group => [:test, :development]
group :test, :development do
  gem 'sqlite3'
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
  gem "database_cleaner", "1.0.1"
  gem "simplecov"
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
