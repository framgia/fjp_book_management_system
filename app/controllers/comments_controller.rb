class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_book, only: [:create, :destroy]
  before_action :find_comment, only: :destroy

  def create
    comment = @book.comments.new comment_params.merge user_id: current_user.id
    if comment.save
      redirect_to @book
    else
      flash[:danger] = "Loi cmnr"
    end
  end

  def destroy
    @comment.destroy
    render json: {}, status: :ok
  end

  private
  def load_book
    @book = Book.find_by id: params[:book_id]
    redirect_to not_found_index_path unless @book
  end

  def comment_params
    params.require(:comment).permit :content, :parent_id
  end

  def find_comment
    @comment = @book.comments.find_by id: params[:id]
  end
end
