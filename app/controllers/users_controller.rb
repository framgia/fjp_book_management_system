class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user

  def show
    type = params[:type]
    per_page = params[:page]
    if type == "blog"
      @posts = current_user.blogs.published
        .page(per_page).per Settings.blog.dashboard.limit
    elsif type == "book_mark"
      @books = current_user.books.page(per_page)
        .per Settings.book_mark.limit
    elsif type == "borrow"
      @borrow = Borrow.where(user_id: current_user.id).order(id: :desc)
        .page(per_page).per Settings.profile.borrow
    elsif type == "info"
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
