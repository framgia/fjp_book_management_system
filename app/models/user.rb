class User < ApplicationRecord
  enum role: [:user, :admin]

  has_many :blogs
  has_many :notifications

  devise :database_authenticatable, :recoverable, :rememberable, :trackable,
    :validatable, :registerable

  mount_uploader :avatar, AvatarUploader

  has_many :requests

  def load_suggest_book_to_users
    User.where.not(id: self.id).order id: :asc
  end
end
