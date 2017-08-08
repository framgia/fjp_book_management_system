class SuggestBook < ApplicationRecord
  belongs_to :book

  class << self
    def create_suggest_book suggest_books_params, book, sender_id
      ActiveRecord::Base.transaction do
        receiver_ids = suggest_books_params[:receiver_id].reject &:blank?
        @suggest_books = []
        receiver_ids.each do |re_id|
          @suggest_book = SuggestBook.create! book_id: book.id,
            sender_id: sender_id, receiver_id: re_id,
            content: suggest_books_params[:content]
          @suggest_books.push @suggest_book
        end
      end
      return @suggest_books if @suggest_book.save
      nil
    end
  end
end
