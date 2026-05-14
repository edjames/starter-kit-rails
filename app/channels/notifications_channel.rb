class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    # stream_for current_user
    # stream_for "some_channel"
    stream_from "notifications_channel"
  end

  def unsubscribed
    stop_all_streams
  end
end
