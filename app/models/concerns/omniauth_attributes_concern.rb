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
        image: params.dig(:info, :image),
        password: Devise.friendly_token
      }

      user = create(attributes)
      user.skip_confirmation!
    end

    def facebook(params)
      email = params.dig(:info, :email).presence || "dummy#{SecureRandom.hex(15)}@dummy.com"
  
      attributes = {
        email: email,
        first_name: params.dig(:info, :first_name),
        last_name: params.dig(:info, :last_name),
        password: Devise.friendly_token,
        image: params.dig(:info, :image)
      }
  
      user = create(attributes)
      user.skip_confirmation!
    end
  end
end
