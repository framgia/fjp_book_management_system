class SearchController < ApplicationController
  def index
    limit = Settings.search.autocomplete.limit
    query = params[:query]
    query_books = Book.ransack title_or_isbn_cont: query,
      authors_name_cont: query, m: "or"
    query_tags = Tag.ransack title_cont: query

    @books = query_books.result(distinct: true)
      .limit limit
    @tags = query_tags.result(distinct: true)
      .limit limit

    respond_to do |format|
      format.html
      format.json do
        html = render_to_string partial: "search/autocomplete.html",
          layout: false, locals: {books: @books, tags: @tags}
        render json: {
          html_data: html
        }
      end
    end
  end

  private
  def search_params
    params.permit :query
  end
end
