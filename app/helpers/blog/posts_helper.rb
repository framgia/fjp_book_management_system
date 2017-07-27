module Blog::PostsHelper
  def tab_active params, status
    param_status = status
    param_status == params[:status] ? "active" : nil
  end
end
