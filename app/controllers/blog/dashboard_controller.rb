class Blog::DashboardController < ApplicationController
  def index
    @posts = Blog.published.order(created_at: :desc).page(params[:page])
      .per Settings.blog.dashboard.limit
    @top_blogers = User.includes(:blogs).top_blogers
  end
end
