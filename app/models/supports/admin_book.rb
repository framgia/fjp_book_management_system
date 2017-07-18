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
    search.sorts = %w(id name) if search.sorts.empty?
    search
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
    BookItem.states.keys
  end
end
