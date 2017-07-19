class Blog < ApplicationRecord
  belongs_to :user

  has_many :blog_books
  has_many :votes, as: :target
  has_many :comments, as: :target
end
