class Supports::AdminRequests
  attr_reader :status
  def initialize arg
    @params = arg[:param]
    @status = @params[:status]
  end

  def request_borrow_books_search
    page = @params[:page]
    per_page = Settings.admin.categories.index.categories_per_page
    if @status != "all"
      Borrow.where(status: @status).order(id: :desc)
        .page(page).per per_page
    else
      Borrow.order(id: :desc)
        .page(page).per per_page
    end
  end

  def number_borrow_books
    Borrow.where(status: @status).count
  end

  def load_book_item_info id
    BookItem.available_books(id).count
  end

  def search_borrow_books
    search = Borrow.ransack @params[:q]
    search.sorts = %w(id) if search.sorts.empty?
    search
  end
end
