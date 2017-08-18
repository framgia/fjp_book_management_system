class Supports::Home
  def initialize arg
    @home = arg
  end

  def load_new_book
    new_book = @home[:new_book]
    return new_book if new_book.present?
    @home[:last_15_book]
  end

  def load_popular_book
    @home[:popular_book]
  end

  def load_top_rate_book
    @home[:top_rate_book]
  end

  def load_recent_blog
    @home[:recent_blog]
  end

  def load_top_author
    @home[:top_author]
  end
end
