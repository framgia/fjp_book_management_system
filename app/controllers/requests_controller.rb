class RequestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @support = Supports::Requests.new request: current_user.requests,
      param: params
    @request = Request.new
  end

  def create
    @request = Request.new request_params.merge user_id: current_user.id
    if @request.save
      flash[:success] = t "flash.requests.create_success"
    else
      flash[:danger] = t "flash.requests.update_failed"
    end
  end

  def update
    @request = Request.find_by id: params[:id]
    if @request.update_attributes request_params
      flash[:success] = t "flash.requests.update_success"
    else
      flash[:danger] = t "flash.requests.update_failed"
    end
  end

  private
  def request_params
    params.require(:request).permit :user_id, :link, :content,
      :request_type, :status
  end
end
