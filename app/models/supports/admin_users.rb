class Supports::AdminUsers
  def initialize arg
    @params = arg
  end

  def users
    @params[:users]
  end

  def users_search
    search.result.page(@params[:param][:page])
      .per Settings.admin.users.index.users_per_page
  end

  def search
    search = User.ransack @params[:param][:q]
    search.sorts = %w(id name) if search.sorts.empty?
    search
  end
end
