class Rate < ApplicationRecord
  belongs_to :user
  belongs_to :book

  after_create :update_book

  private
  def update_book
    book = Book.find_by id: self.book_id
    rates = book.rates
    size = rates.size
    book.rate_count = size
    total = 0
    rates.each do |rate|
      total += rate.score
    end
    book.rate = total * 1.0 / size
    book.save
  end
end
