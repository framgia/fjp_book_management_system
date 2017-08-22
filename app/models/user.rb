class User < ApplicationRecord
  enum role: [:user, :admin]

  has_many :blogs
  has_many :notifications
  has_many :book_marks
  has_many :books, through: :book_marks
  has_many :requests

  devise :database_authenticatable, :recoverable, :rememberable, :trackable,
    :validatable, :registerable

  mount_uploader :avatar, AvatarUploader

  top_blogers_query = where id: Blog.published.group(:user_id).limit(5)
    .pluck(:user_id)

  scope :top_blogers, ->{top_blogers_query}

  def load_suggest_book_to_users
    User.where.not(id: self.id).order id: :asc
  end

  def book_marked_books
    Book.where(id: book_marks.pluck(:book_id)).order id: :desc
  end

  def book_marked? book
    self.book_marks.find_by(book: book).present? ? true : false
  end
end
