class BookItem < ApplicationRecord
  before_save :default_values
  enum state: ["Ready", "Not ready"]

  belongs_to :book

  scope :number_books_available, ->(book_id){
    where(book_id: book_id, state: "Ready").count }

  def default_values
    self.state ||= "Ready"
  end
end
