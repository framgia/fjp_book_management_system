class BookItem < ApplicationRecord
  before_save :default_values
  enum state: [:ready, :not_ready]

  belongs_to :book

  scope :available_books, ->(id){where(book_id: id, state: :ready).count}

  def default_values
    self.state ||= "Ready"
  end
end
