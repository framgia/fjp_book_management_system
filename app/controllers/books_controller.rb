class BooksController < ApplicationController
  include ApplicationHelper

  before_action only: :show do
    find_book params[:id]
  end

  def show
  end

  def index
    @books = Book.in_category(params[:category_id])
      .by_author(params[:author_id]).by_publisher(params[:publisher_id])
      .page(params[:page]).per Settings.user.books.per_page
    @categories = Category.all
    @authors = Author.all
    @publishers = Publisher.all
  end

  private
  def book_params
    params.require(:book).permit :name
  end
end
