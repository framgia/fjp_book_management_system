class Admin
  class BooksController < AdminController
    before_action :find_book, except: [:index, :new, :create]
    before_action :load_support, except: [:update, :create, :destroy]

    def index
      @books = Supports::AdminBook.new book: Book.all, param: params
      @book = Book.new
    end

    def show; end

    def new
      @book = Book.new
      @book.build_language
      @book.build_publisher
      @images = @book.images.build
    end

    def create
      @book = Book.new book_params
      if @book.save
        save_images if params[:images]
        flash[:success] = t "flash.book.create_success"
        redirect_to admin_book_path @book
      else
        render :new
      end
    end

    def edit
      @images = @book.images.build
    end

    def update
      update_images if params[:images]
      if @book.update_attributes book_params
        flash[:success] = t "flash.book.update_success"
        redirect_to admin_book_path @book
      else
        render :edit
      end
    end

    def destroy
      if @book.destroy
        flash[:success] = t "flash.book.destroy_success"
      else
        flash[:danger] = t "flash.book.destroy_fail"
      end
      redirect_back fallback_location: admin_books_path
    end

    private
    def book_params
      params.require(:book).permit :title, :pages, :weight, :dimension, :isbn,
        :publisher_id, :language_id, :series_id, category_ids: [],
        images_attributes: [:id, :url], author_ids: [],
        publisher_attributes: [:id, :name], series_attributes: [:id, :title],
        language_attributes: [:id, :full_name]
    end

    def save_images
      params[:images]["url"].each do |image|
        @images = @book.images.create!(url: image)
      end
    end

    def update_images
      book_images = @book.images
      book_images.each(&:destroy)
      if book_images.present?
        params[:images]["url"].each do |image|
          @images = book_images.create!(url: image)
        end
      end
    end

    def find_book
      @book = Book.find_by id: params[:id]

      return if @book
      flash[:danger] = t "flash.book.find_fail"
      redirect_to admin_books_path
    end

    def load_support
      @supports = Supports::AdminBook.new @book
    end
  end
end
