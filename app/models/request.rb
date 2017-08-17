class Request < ApplicationRecord
  enum request_type: [:donate_book, :purchase_request]
  enum status: [:pending, :approved, :cancel, :reject]

  after_create{NotificationJob.perform_now self}

  belongs_to :user

  validates :link, presence: true
end
