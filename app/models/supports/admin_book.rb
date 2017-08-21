class Supports::AdminBook
  def initialize arg
    @params = arg
  end

  def books
    @params[:book]
  end

  def books_search
    search.result.page(@params[:param][:page])
      .per Settings.admin.book.book_limit
  end

  def search
    search = Book.ransack @params[:param][:q]
    search.sorts = %w(created_at\ desc) if search.sorts.empty?
    search
  end

  def book_items_search
    item_search.result.page(@params[:param][:page])
      .per Settings.search.autocomplete.limit
  end

  def item_search
    params = @params[:param]
    book = Book.find_by id: params[:id]
    item_search = book.book_items.ransack params[:q]
    item_search.sorts = %w(created_at\ desc) if item_search.sorts.empty?
    item_search
  end

  def publishers
    Publisher.all.map{|p| [p.name, p.id]}
  end

  def languages
    Language.all.map{|p| [p.full_name, p.id]}
  end

  def series
    Series.all.map{|p| [p.title, p.id]}
  end

  def categories
    Category.all
  end

  def authors
    Author.all
  end

  def book_items
    BookItem.states.keys.map{|w| [w.humanize, w]}
  end

  def load_book_items
    BookItem.states.keys.map{|w| [w, w.humanize]}
  end

  def tags
    Tag.all
  end
end
