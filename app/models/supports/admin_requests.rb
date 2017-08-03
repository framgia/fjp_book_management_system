class Supports::AdminRequests
  def initialize arg
    @params = arg
  end

  def request_borrow_books
    @params[:borrow_books]
  end

  def status
    @params[:status]
  end

  def request_borrow_books_search
    request_borrow_books.page(@params[:param][:page])
      .per Settings.admin.categories.index.categories_per_page
  end

  def load_book_item_info id
    BookItem.available_books id
  end

  def search_borrow_books
    search = Borrow.ransack @params[:param][:q]
    search.sorts = %w(id) if search.sorts.empty?
    search
  end
end
