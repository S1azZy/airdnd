module OmniauthAttributesConcern
  extend ActiveSupport::Concern

  module ClassMethods
    def twitter(params)
      email = params.dig(:info, :email).presence || "dummy#{SecureRandom.hex(15)}@dummy.com"
      name = params.dig(:info, :name)

      attributes = {
        email: email,
        first_name: name.split(' ').first,
        last_name: name.split(' ').last,
        password: Devise.friendly_token
      }

      create(attributes)
    end

    def facebook(params)
      email = params.dig(:info, :email).presence || "dummy#{SecureRandom.hex(15)}@dummy.com"
  
      attributes = {
        email: email,
        first_name: params.dig(:info, :first_name),
        last_name: params.dig(:info, :last_name),
        password: Devise.friendly_token
      }
  
      create(attributes)
    end
  end
end
