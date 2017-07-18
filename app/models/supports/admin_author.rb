class Supports::AdminAuthor
  def initialize arg
    @params = arg
  end

  def authors
    @params[:author]
  end

  def authors_search
    search.result.page(@params[:param][:page])
      .per Settings.admin.author.per_page
  end

  def search
    search = Author.ransack @params[:param][:q]
    search.sorts = %w(id name) if search.sorts.empty?
    search
  end
end
