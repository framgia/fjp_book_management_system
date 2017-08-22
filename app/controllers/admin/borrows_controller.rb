class Admin::BorrowsController < AdminController
  skip_before_action :verify_authenticity_token
  before_action :find_borrow, only: [:update]
  before_action :option_params, only: [:index]

  def index
    @data = Supports::AdminRequests.new param: params
  end

  def update
    param = update_requests_params
    status = param[:status]
    available_books = BookItem.available_books(@borrow.book_id)
    status_is_approved = (status == "approved")
    if status_is_approved && (available_books.count <= 0)
      flash[:danger] = t "admin.requests.update.not_enough_books"
      return
    elsif @borrow.update_attributes param
      if status_is_approved
        book_item = available_books.first
        book_item.state = :not_ready
        book_item.save
        @borrow.book_item_id = book_item.id
        @borrow.save
      end
      success_response
    else
      flash[:danger] = t "admin.requests.update.something_wrong"
    end
  end

  private
  def success_response
    respond_to do |f|
      link = "admin/borrows/_borrow_row"
      data = Supports::AdminRequests.new param: params
      f.html{render link, layout: false, locals: {request: @borrow, data: data}}
    end
    flash[:success] = t "admin.requests.update.success"
  end

  def find_borrow
    @borrow = Borrow.find_by id: params[:id]

    return if @borrow
    flash[:danger] = t "admin.requests.index.not_exist"
  end

  def option_params
    param! :status, String,
      in: %w(all cancel rejected not_approved_yet approved),
      transform: :downcase, default: "not_approved_yet"
  end

  def update_requests_params
    params.require(:borrow_books).permit :status
  end
end
