class BlogBook < ApplicationRecord
  belongs_to :blog
  belongs_to :book
end
