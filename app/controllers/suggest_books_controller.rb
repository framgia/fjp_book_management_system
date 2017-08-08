class SuggestBooksController < ApplicationController
  include ApplicationHelper

  before_action only: :create do
    find_book params[:book_id]
  end

  def create
    suggest_books = SuggestBook
      .create_suggest_book(suggest_books_params, @book, current_user.id)

    if suggest_books
      users = []
      suggest_books.each do |suggest_book|
        users.push User.find suggest_book.receiver_id
      end
      @supports = Supports::SuggestBooks.new book: @book,
        suggest_books: suggest_books, users: users
      respond_to do |f|
        partial = "suggest_books/_modal_suggest_book_result"
        f.html{render partial, layout: false, locals: {supports: @supports}}
      end
    else
      flash[:danger] = t "books.suggest_book.fail"
    end
  end

  private
  def suggest_books_params
    params.require(:suggest_book).permit :sender_id, :book_id, :content,
      receiver_id: []
  end
end
