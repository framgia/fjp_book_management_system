class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book, only: [:create]

  def create
    comment = @book.comments.new comment_params.merge user_id: current_user.id
    if comment.save
      redirect_to @book
    else
      flash[:danger] = "Loi cmnr"
    end
  end

  private
  def load_book
    @book = Book.find_by id: params[:book_id]
    unless @book
      flash[:danger] = "Not found"
      redirect_back
    end
  end

  def comment_params
    params.require(:comment).permit :content, :parent_id
  end
end
