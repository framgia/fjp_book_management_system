class Admin::StaticPagesController < AdminController
  def show
    if valid_page?
      render "admin/static_pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private
  def valid_page?
    File.exist? Pathname.new(Rails.root +
      "app/views/admin/static_pages/#{params[:page]}.html.erb")
  end
end
