source "https://rubygems.org"

ruby "4.0.1"
gem "rails", "~> 8.1.3"

gem "bootsnap", require: false
gem "clockwork"
gem "dalli"
gem "devise"
gem "image_processing", "~> 1.2"
gem "importmap-rails"
gem "jbuilder"
gem "pagy"
gem "pg"
gem "pghero"
gem "propshaft"
gem "puma"
gem "redis"
gem "sidekiq"
gem "sidekiq-failures"
gem "simple_form"
gem "slim-rails"
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"
gem "sqlite3", ">= 2.1"
gem "stimulus-rails"
gem "turbo-rails"

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

group :development, :test do
  gem "awesome_print"
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "dotenv-rails", require: "dotenv/load"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "factory_bot_rails"
  gem "ffaker"
  gem "growl"
  gem "guard"
  gem "guard-rspec", require: false
  gem "rspec-rails"

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "foreman"
  gem "listen"
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem "rack-mini-profiler"
  gem "spring"
  gem "web-console"

  # code linting only
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
