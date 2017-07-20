class Author < ApplicationRecord
  has_many :follows
  has_many :author_books
  has_many :books, through: :author_books, dependent: :destroy
  has_many :images, as: :target

  accepts_nested_attributes_for :images
end
