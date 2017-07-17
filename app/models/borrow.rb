class Borrow < ApplicationRecord
  enum status: [:not_approved, :approved, :cancel, :reject]

  belongs_to :user
  belongs_to :book
end
