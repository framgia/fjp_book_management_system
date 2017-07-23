class BooksController < ApplicationController
  include ApplicationHelper

  before_action only: :show do
    find_book params[:id]
  end

  def show
  end

  private
  def book_params
    params.require(:book).permit :name
  end
end
