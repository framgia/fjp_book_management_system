class TagsController < ApplicationController
  before_action :find_tag, only: :show
  before_action :sort_params, only: [:index, :show]
  before_action :load_tags, only: :show

  def index
    @tags = Tag.page(params[:page])
      .per Settings.explorer.tags.limit
  end

  def show
    @books = @tag.books.order("#{params[:sort]}": :desc).page(params[:page])
      .per Settings.categories.category.limit
  end

  private
  def find_tag
    @tag = Tag.find_by id: params[:id]
    redirect_to tags_path unless @tag
  end

  def load_tags
    @tags = Tag.all.limit Settings.explorer.tags.limit
  end

  def sort_params
    param! :sort, String,
      in: %w(title created_at public_date),
      transform: :downcase, default: "created_at"
  end
end
