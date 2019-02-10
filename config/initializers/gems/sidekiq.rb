require 'sidekiq/web'
Sidekiq::Web.set :sessions, false

log_level = ENV.fetch('WORKER_LOG_LEVEL', 'warn').upcase
logger    = "Logger::#{log_level}".constantize
Sidekiq::Logging.logger.level = logger

redis_url = ENV.fetch('REDIS_URL', 'redis://localhost:6379')

Sidekiq.configure_server do |config|
  config.redis = { url: redis_url }
end

Sidekiq.configure_client do |config|
  config.redis = { url: redis_url }
end
