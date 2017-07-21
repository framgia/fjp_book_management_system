class Admin
  class CategoriesController < AdminController
    skip_before_action :verify_authenticity_token
    before_action :find_category, only: [:update, :destroy]

    def index
      @data = Supports::AdminCategories.new categories: Category.all,
        param: params, books: Book.all
      @category = Category.new
    end

    def create
      category = Category.new category_params
      if category.save
        flash[:success] = t "admin.categories.create.success"
      else
        flash[:danger] = t "admin.categories.create.something_wrong"
      end
    end

    def update
      if @category.update_attributes category_params
        flash[:success] = t "admin.categories.update.success"
      else
        flash[:danger] = t "admin.categories.update.something_wrong"
      end
    end

    def destroy
      if @category.destroy
        flash[:success] = t "admin.categories.destroy.success"
      else
        flash[:danger] = t "admin.categories.destroy.something_wrong"
      end
    end

    private
    def find_category
      @category = Category.find_by id: params[:id]

      return if @category
      flash[:danger] = t "admin.categories.index.not_exist"
    end

    def category_params
      params.require(:category).permit :title, :description,
        :parent_id, book_ids: []
    end
  end
end
