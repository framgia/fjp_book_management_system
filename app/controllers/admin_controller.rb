class AdminController < ActionController::Base
  before_action :authenticate_user!
  before_action :is_admin?

  protect_from_forgery with: :exception

  layout "admin"

  private
  def is_admin?
    redirect_to root_path unless current_user.role == "admin"
  end
end
