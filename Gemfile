source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'
gem 'rails', '~> 6.1.1'

gem 'bootsnap', require: false
gem 'clockwork'
gem 'dalli'
gem 'devise'
gem 'hirb'
gem 'jbuilder'
gem 'pagy'
gem 'pg', '>= 0.18', '< 2.0'
gem 'pghero'
gem 'puma'
gem 'sass-rails'
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'simple_form'
gem 'slim-rails'
gem 'uglifier'
gem 'webpacker'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug'
  gem 'dotenv-rails', '~> 2.7.6', require: 'dotenv/rails-now'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'growl'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'pry-byebug'
  gem 'rspec-rails'
end

group :development do
  gem 'foreman'
  gem 'listen', '~> 3.3'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'

  # code linting only
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'mocha'
end
