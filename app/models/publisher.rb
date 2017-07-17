class Publisher < ApplicationRecord
  has_many :images, as: :target
  has_many :books
end
