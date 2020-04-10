web: bin/puma -C config/puma.rb
scheduler: bin/clockwork config/clock.rb
webpacker: ./bin/webpack-dev-server
worker: bin/sidekiq -c $WORKER_COUNT -q default
