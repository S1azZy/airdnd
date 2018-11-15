class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include OmniConcern
  
  %w[facebook twitter].each do |method|
    define_method(method) do
      create
    end
  end
end