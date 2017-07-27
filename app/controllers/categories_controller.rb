class CategoriesController < ApplicationController
  before_action :find_category, only: :show
  before_action :sort_params, only: [:index, :show]
  before_action :load_categories, only: [:index, :show]

  def index
    @books = Book.order("#{params[:sort]}": :desc).page(params[:page])
      .per Settings.categories.category.limit
  end

  def show
    @books = @category.books.order("#{params[:sort]}": :desc)
      .page(params[:page])
      .per Settings.categories.category.limit
  end

  private
  def find_category
    @category = Category.find_by id: params[:id]
    redirect_to categories_path unless @category
  end

  def load_categories
    @categories = Category.group_categories
  end

  def sort_params
    param! :sort, String,
      in: %w(title created_at public_date),
      transform: :downcase, default: "created_at"
  end
end
