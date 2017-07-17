class Request < ApplicationRecord
  enum type: [:donate_book, :purchase_request]

  belongs_to :user
end
