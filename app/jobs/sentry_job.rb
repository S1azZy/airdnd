class SentryJob < ApplicationJob
  queue_as :sentry_send_event
  def perform(event)
    Raven.send_event(event)
  end
end
