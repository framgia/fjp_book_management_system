class User < ApplicationRecord
  enum role: [:user, :admin]

  has_many :blogs

  devise :database_authenticatable, :recoverable, :rememberable, :trackable,
    :validatable, :registerable

  mount_uploader :avatar, AvatarUploader
end
