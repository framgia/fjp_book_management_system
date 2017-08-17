class Feedback < ApplicationRecord
  enum state: [:not_read_yet, :read]

  after_create{NotificationJob.perform_now self}

  belongs_to :user
end
