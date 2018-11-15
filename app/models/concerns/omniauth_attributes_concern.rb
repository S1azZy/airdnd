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
        username: params.dig(:info, :nickname),
        password: Devise.friendly_token
      }
      
      create(attributes)
    end
  end
end