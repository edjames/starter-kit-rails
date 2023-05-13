class StarterKitWorker
  include Sidekiq::Worker

  def perform(duration = 5)
    NotificationsChannel.broadcast_to('some_channel', time: Time.now.utc.to_s)
    sleep duration
  end
end
