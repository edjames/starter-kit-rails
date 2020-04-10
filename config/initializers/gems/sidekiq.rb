require 'sidekiq/web'

Sidekiq::Web.set :sessions, false

Sidekiq.configure_server do |config|
  log_level = ENV.fetch('WORKER_LOG_LEVEL', 'warn').upcase
  config.logger.level = "Logger::#{log_level}".constantize
end

redis_url = ENV.fetch('REDIS_URL', 'redis://localhost:6379')

Sidekiq.configure_server do |config|
  config.redis = { url: redis_url }
end

Sidekiq.configure_client do |config|
  config.redis = { url: redis_url }
end
