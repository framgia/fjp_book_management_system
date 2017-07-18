class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :trackable,
    :validatable, :registerable

  mount_uploader :avatar, AvatarUploader
end
