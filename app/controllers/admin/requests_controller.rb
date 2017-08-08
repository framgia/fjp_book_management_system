class Admin::RequestsController < AdminController
  skip_before_action :verify_authenticity_token
  before_action :find_request, only: [:update]

  def index
    status = show_option_params[:status]
    session[:status] = status if status.present?
    status = session[:status]

    if status.blank?
      load_data "not_approved"
    else
      load_data status
    end
  end

  def update
    if @request.update_attributes update_requests_params
      flash[:success] = t "admin.requests.update.success"
    else
      flash[:danger] = t "admin.requests.update.something_wrong"
    end
  end

  private
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
        Borrow.ordered_by_create_time, param: params, status: status
    else
      @data = Supports::AdminRequests.new borrow_books:
        Borrow.ordered_by_create_time_with_status(status), param: params,
        status: status
    end
  end

  def update_requests_params
    params.require(:borrow_books).permit :status
  end
end
