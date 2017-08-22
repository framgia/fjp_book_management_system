class Supports::AdminCategories
  def initialize arg
    @params = arg
  end

  def categories
    @params[:categories]
  end

  def current_page
    @params[:param][:page]
  end

  def load_list_parent_avaible id
    Category.group_categories - [Category.find_by(id: id)]
  end

  def books
    @params[:books]
  end

  def categories_search
    search.result.page(@params[:param][:page])
      .per Settings.admin.categories.index.categories_per_page
  end

  def find_category id
    category = Category.find_by id: id
    category.title
  end

  def search
    search = Category.ransack @params[:param][:q]
    search.sorts = %w(id title description) if search.sorts.empty?
    search
  end
end
