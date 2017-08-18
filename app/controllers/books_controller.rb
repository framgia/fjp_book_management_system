class BooksController < ApplicationController
  include ApplicationHelper

  before_action only: :show do
    find_book params[:id]
  end
  before_action :check_book, only: :show

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
    @suggest_book = SuggestBook.new
    @users = current_user.load_suggest_book_to_users
    @book_mark = current_user.book_marks.find_by book: @book
  end

  private
  def book_params
    params.require(:book).permit :name
  end

  def check_book
    redirect_to not_found_index_path unless @book
  end
end
