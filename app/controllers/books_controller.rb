class BooksController < ApplicationController
  before_action :find_book
  def show
  end

  private
  def book_params
    params.require(:book).permit :name
  end

  def find_book
    @book = Book.find_by id: params[:id]
  end
end
