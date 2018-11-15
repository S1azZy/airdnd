class User < ApplicationRecord
  include OmniauthAttributesConcern

  has_many :user_authentications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable, :omniauthable

  def avatar_url
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=150"
  end

  def self.create_from_omniauth(params)
    self.send(params.provider, params)
  end

  private

  def gravatar_id
    @gravatar_id ||= Digest::MD5.hexdigest(email).downcase
  end
end
