source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'
gem 'rails', '~> 6.0.0'

gem 'bootsnap', require: false
gem 'dalli'
gem 'devise'
gem 'jbuilder'
gem 'pagy'
gem 'pg', '>= 0.18', '< 2.0'
gem 'pghero'
gem 'puma'
gem 'sass-rails'
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'sidekiq-scheduler'
gem 'simple_form'
gem 'slim-rails'
gem 'uglifier'
gem 'webpacker'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug'
  gem 'dotenv-rails', require: 'dotenv/rails-now'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'growl'
  gem 'guard'
  gem 'guard-minitest'
  gem 'pry-byebug'
end

group :development do
  gem 'foreman'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'minitest-reporters'
  gem 'mocha'
end
