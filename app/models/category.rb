class Category < ApplicationRecord
  has_many :book_categories
  has_many :books, through: :book_categories, dependent: :destroy
end
