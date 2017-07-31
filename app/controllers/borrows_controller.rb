class BorrowsController < ApplicationController
  def create
    borrow = Borrow.new

    unless borrow.update_attributes borrow_params.merge user_id: current_user.id
      flash[:danger] = t "borrows.create.flash.fail_create"
    end

    respond_to do |f|
      partial = "books/_modal_send_req_result"
      book_id = borrow_params[:book_id]
      f.html{render partial, layout: false, locals: {book: find_book(book_id)}}
    end
  end

  private
  def borrow_params
    params.require(:borrow).permit :book_id, :user_id, :note,
      :time_start, :time_end
  end
end
