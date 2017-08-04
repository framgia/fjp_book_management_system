class Request < ApplicationRecord
  enum request_type: [:donate_book, :purchase_request]
  enum status: [:pending, :approved, :cancel, :reject]

  belongs_to :user

  validates :link, presence: true
end
