source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'
gem 'rails', '~> 7.1.2'

gem 'bootsnap', require: false
gem 'clockwork'
gem 'dalli'
gem 'devise'
gem 'hirb'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pagy'
gem 'pg'
gem 'pghero'
gem 'puma'
gem 'redis'
gem 'sassc-rails'
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'simple_form'
gem 'slim-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'sprockets-rails'
gem 'uglifier'

group :development, :test do
  gem 'awesome_print'
  gem 'debug'
  gem 'dotenv-rails', '~> 2.7.6', require: 'dotenv/rails-now'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'growl'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'rspec-rails'
end

group :development do
  gem 'foreman'
  gem 'listen', '~> 3.3'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console'

  # code linting only
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'capybara'
  gem 'mocha'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
