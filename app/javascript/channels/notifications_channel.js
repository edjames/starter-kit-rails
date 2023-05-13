import consumer from "channels/consumer"

consumer.subscriptions.create("NotificationsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the channel:", this);
  },
  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("Disconnected");
  },
  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Received some data:", data['time']);
    $('#action-cable-label').text('Current time (ActionCable operational!)')
    $('#action-cable-time').text(data['time'])
  }
});

