class Feedback < ApplicationRecord
  enum state: [:not_read_yet, :read, :canceled]

  after_create{NotificationJob.perform_now self}

  belongs_to :user
end
