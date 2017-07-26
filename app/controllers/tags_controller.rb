class TagsController < ApplicationController
  before_action :find_tag, only: :show
  before_action :load_tags, only: :show

  def index
  end

  def show
    @books = @tag.books.page(params[:page])
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
end
