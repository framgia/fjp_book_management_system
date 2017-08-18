class AuthorBook < ApplicationRecord
  belongs_to :author
  belongs_to :book

  accepts_nested_attributes_for :author
end
