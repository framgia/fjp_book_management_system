class StaticPagesController < ApplicationController
  include ApplicationHelper

  def show
    setting = Settings.user.home
    @support = Supports::Home.new new_book:
      Book.new_book(setting.new_book),
      popular_book: Book.popular_book(setting.popular_book),
      recent_blog: Blog.recent_blog(setting.recent_blog),
      top_author: Author.top_author,
      top_rate_book: Book.top_rated_book(setting.top_rate_book),
      last_15_book: Book.last_15_book
    if valid_page?
      render "static_pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private
  def valid_page?
    File.exist? Pathname.new(Rails.root +
      "app/views/static_pages/#{params[:page]}.html.erb")
  end
end
