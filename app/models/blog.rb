class Blog < ApplicationRecord
  enum status: [:draft, :published]

  belongs_to :user

  has_many :votes, as: :target
  has_many :comments, as: :target
  has_and_belongs_to_many :books, join_table: :blog_books

  accepts_nested_attributes_for :books
end
