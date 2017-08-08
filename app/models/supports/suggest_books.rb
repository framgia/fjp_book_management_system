class Supports::SuggestBooks
  def initialize arg
    @suggest_books = arg
  end

  def load_book
    @suggest_books[:book]
  end

  def load_suggest_books
    @suggest_books[:suggest_books]
  end

  def load_users
    @suggest_books[:users]
  end
end
