class CategoriesController < ApplicationController
  before_action :find_category, only: :show
  before_action :load_categories, only: [:index, :show]

  def index
  end

  def show
    @books = @category.books.page(params[:page])
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
end
