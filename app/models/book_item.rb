class BookItem < ApplicationRecord
  before_save :default_values
  enum state: [:ready, :not_ready]

  belongs_to :book
  has_many :borrow, dependent: :destroy

  scope :available_books, ->(id){ready.where(book_id: id)}

  def default_values
    self.state ||= "Ready"
  end
end
