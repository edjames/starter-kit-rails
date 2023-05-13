class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    LoudLogger.log "subscribed"
    # stream_for current_user
    stream_for "some_channel"
  end

  def unsubscribed
    LoudLogger.log "unsubscribed"
    stop_all_streams
  end
end
