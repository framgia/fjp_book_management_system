class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user

  def show
    @type = params[:type]
    if @type == "blog"
      @posts = current_user.blogs.published
        .page(params[:page]).per Settings.blog.dashboard.limit
    end
  end

  private
  def find_user
    @user = User.find_by id: params[:id]
    return if @user.present?
    flash[:danger] = t "user.edit.not_found"
    redirect_to root_path
  end
end
