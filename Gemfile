source 'https://rubygems.org'

ruby '2.2.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
gem 'figaro'
gem 'haml'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'jquery-rails'
gem 'date_validator'            # datetime validations for ActiveRecord
gem 'foreman'
gem 'foreigner'			#foreign key support for rails

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'          # basic web steps like "I should see..."
  gem 'database_cleaner' # required by Cucumber
  gem 'autotest-rails'
  gem 'simplecov', :require => false
  gem 'timecop'
  gem 'cucumber-timecop', :require => false   # for testing code that relies on time of day
  gem 'poltergeist'#used for headless-browser and js
end

group :development, :test do
  gem 'sqlite3'
  gem 'pry-byebug'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'jasmine-rails'
  gem 'jasmine-jquery-rails'
end

group :production do
  gem 'pg'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass'
  gem 'sass-rails'
  gem 'bootstrap-sass'
  gem 'uglifier', '>= 1.3.0'
end