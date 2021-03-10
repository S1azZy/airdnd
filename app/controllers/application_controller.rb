class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_raven_context

  private

  def set_raven_context
    Raven.extra_context(params: params.to_unsafe_h, url: request.url, method: request.method)
    Raven.user_context(user_id: current_user&.id, ip: request.remote_ip)
  end
end
