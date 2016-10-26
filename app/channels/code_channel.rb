# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class CodeChannel < ApplicationCable::Channel
  def subscribed
    stream_from "code_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast "code_channel", message: data['message']
  end
end
