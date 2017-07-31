class Admin::RequestsController < AdminController
  skip_before_action :verify_authenticity_token
  before_action :find_request, only: [:update]

  def index
    status = show_option_params[:status]
    if status.blank?
      load_data "not_approved"
    else
      load_data status
    end
  end

  def update
    @new_value = update_requests_params
    status = @new_value[:status]

    if status == "reject"
      update_request
    elsif status != "reject" &&
      (BookItem.available_books @request[:book_id] > 0)
      update_request
    end
  end

  private
  def update_request
    if @request.update_attributes @new_value
      flash[:success] = t "admin.requests.update.success"
    else
      flash[:danger] = t "admin.requests.update.something_wrong"
    end
  end

  def show_option_params
    params.permit :status
  end

  def find_request
    @request = Borrow.find_by id: params[:id]

    return if @request
    flash[:danger] = t "admin.requests.index.not_exist"
  end

  def load_data status
    if status == "all"
      @data = Supports::AdminRequests.new borrow_books:
        Borrow.ordered_by_create_time, param: params
    else
      @data = Supports::AdminRequests.new borrow_books:
        Borrow.ordered_by_create_time_with_status(status), param: params
    end
  end

  def update_requests_params
    params.require(:borrow).permit :status
  end
end
