class BookTag < ApplicationRecord
  has_many :books
  has_many :tags
end
