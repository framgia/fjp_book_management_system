class Supports::Requests
  def initialize arg
    @params = arg
  end

  def requests_search
    search.result.page(@params[:param][:page])
      .per Settings.search.autocomplete.limit
  end

  def search
    search = Request.ransack @params[:param][:q]
    search.sorts = %w(created_at\ desc) if search.sorts.empty?
    search
  end

  def load_statuses
    Request.statuses.to_a.map{|w| [w[0].humanize, w[1]]}
  end

  def load_types
    Request.request_types.to_a
  end
end
