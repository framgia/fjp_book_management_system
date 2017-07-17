class Feedback < ApplicationRecord
  enum state: [:not_read_yet, :read]

  belongs_to :user
end
