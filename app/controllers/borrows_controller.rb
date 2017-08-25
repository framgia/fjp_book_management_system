class BorrowsController < ApplicationController
  include ApplicationHelper

  def create
    borrow = Borrow.new

    unless borrow.update_attributes borrow_params.merge user_id: current_user.id
      flash[:danger] = t "borrows.create.flash.fail_create"
    end

    respond_to do |f|
      partial = "books/_modal_send_req_result"
      book_id = borrow_params[:book_id]
      book = find_book book_id
      f.html{render partial, layout: false, locals: {book: book, req: borrow}}
    end
  end

  def update
    request = find_request
    update_request = request.update_attributes status: "cancel"
    flash[:danger] = t "borrow.destroy.fail" unless update_request

    respond_to do |f|
      link = "users/_borrow_row"
      f.html{render link, layout: false, locals: {request: request}}
    end
  end

  private
  def borrow_params
    params.require(:borrow).permit :book_id, :user_id, :note,
      :time_start, :time_end
  end

  def find_request
    Borrow.find_by id: params[:id]
  end
end
