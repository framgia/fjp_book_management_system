class Author < ApplicationRecord
  has_many :follows
  has_many :author_books
  has_many :books, through: :author_books, dependent: :destroy
  has_many :images, as: :target

  accepts_nested_attributes_for :images

  top_author_result = Author.where(id: AuthorBook.group(:author_id)
    .limit(Settings.user.home.top_author).pluck(:author_id))
  scope :top_author, ->{top_author_result}

  mount_uploader :avatar, AvatarUploader
end
