class StarterKitWorker
  include Sidekiq::Worker

  def perform(duration = 5)
    ActionCable.server.broadcast("notifications_channel", { content: 'message', time: Time.now.utc.to_s })
    sleep duration
  end
end
