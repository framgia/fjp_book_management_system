class Request < ApplicationRecord
  enum request_type: [:donate_book, :purchase_request]
  enum status: [:pending, :approved, :cancel, :reject]

  after_create{NotificationJob.perform_now self}

  after_update :send_notify_after_update, if: :status_changed?

  belongs_to :user

  validates :link, presence: true

  private
  def send_notify_after_update
    NotificationAfterRequestUpdateJob.perform_now self
  end
end
