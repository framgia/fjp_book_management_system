class BookItem < ApplicationRecord
  before_save :default_values
  enum state: ["Ready", "Not ready"]

  belongs_to :book

  scope :available_books, ->(id){where(book_id: id, state: "Ready").count}

  def default_values
    self.state ||= "Ready"
  end
end
