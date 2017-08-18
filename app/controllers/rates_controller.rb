class RatesController < ApplicationController
  before_action :find_book, only: [:create]

  def create
    rate = @book.rates.new rate_params
    rate.user_id = current_user.id
    rate.save
  end

  private
  def find_book
    @book = Book.find_by id: params[:book_id]
    @rate = @book.rates.find_by user_id: current_user.id

    @rate.destroy if @rate
  end

  def rate_params
    params.require(:rate).permit :score
  end
end
