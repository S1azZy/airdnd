Raven.configure do |config|
  sentry_key = ENV.fetch("SENTRY_PROJECT_KEY", nil)
  if sentry_key.present?
    project_id = ENV.fetch("SENTRY_PROJECT_ID", nil)
    config.dsn = "https://#{sentry_key}@sentry.io/#{project_id}"
  end

  config.environments = %w[production]

  config.logger = Rails.logger
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  config.silence_ready = true

  config.async = lambda { |event|
    SentryJob.perform_later(event)
  }
end
