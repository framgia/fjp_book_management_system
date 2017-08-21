class Blog < ApplicationRecord
  enum status: [:draft, :published]

  belongs_to :user

  has_many :votes, as: :target
  has_many :comments, as: :target
  has_many :blog_books
  has_many :books, through: :blog_books

  has_and_belongs_to_many :books, join_table: :blog_books

  accepts_nested_attributes_for :books

  month_ago = Date.today - 1.month
  scope :recent_blog, ->l{Blog.where("updated_at > ?", month_ago).limit l}
end
