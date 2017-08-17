class Borrow < ApplicationRecord
  enum status: [:not_approved, :approved, :cancel, :reject]

  after_create{NotificationJob.perform_now self}

  belongs_to :user
  belongs_to :book
  scope :ordered_by_create_time_with_status,
    ->(status){where(status: status).order(updated_at: :desc)}
  scope :ordered_by_create_time, ->{order(updated_at: :desc)}
end
