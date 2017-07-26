class Tag < ApplicationRecord
  has_and_belongs_to_many :books, join_table: :book_tags
end
