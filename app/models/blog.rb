class Blog < ApplicationRecord
  belongs_to :user

  has_many :blog_books
  has_many :votes
  has_many :comments, as: target
end
