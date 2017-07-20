class SearchController < ApplicationController
  def index
    limit = Settings.search.autocomplete.limit

    query = params[:query]
    query_books = Book.ransack title_or_isbn_cont: query,
      authors_name_cont: query, categories_title_cont: query,
      m: "or"

    respond_to do |format|
      format.html do
        @books = query_books.result.page(params[:page]).per limit

        query_suggest_tags = Tag.ransack title_cont_any: query.split(" ")
        @suggest_tags = query_suggest_tags.result.limit limit
      end

      format.json do
        @books = query_books.result(distinct: true)
          .limit limit

        query_tags = Tag.ransack title_cont: query
        @tags = query_tags.result(distinct: true)
          .limit limit

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
