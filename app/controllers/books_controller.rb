class BooksController < ApplicationController
  include ApplicationHelper

  before_action only: :show do
    find_book params[:id]
  end

  def index
    respond_to do |format|
      format.html do
        limit = Settings.search.autocomplete.limit

        query = params[:query]
        query_books = Book.ransack title_or_isbn_cont: query,
          authors_name_cont: query, categories_title_cont: query,
          m: "or"

        books = query_books.result(distinct: true)
          .page(params[:page]).per limit

        render json: {
          items: books,
          page: books.next_page
        }
      end
    end
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit :name
  end
end
