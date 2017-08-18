class Admin
  class AuthorsController < AdminController
    before_action :find_author, except: [:index, :new, :create]
    before_action :load_books, only: [:new, :edit]

    def index
      @authors = Supports::AdminAuthor.new author: Author.all, param: params
    end

    def show; end

    def new
      @author = Author.new
    end

    def create
      @author = Author.new author_params
      if @author.save
        flash[:success] = t "flash.author.create_success"
        redirect_to admin_author_path @author
      else
        render :new
      end
    end

    def edit; end

    def update
      if @author.update_attributes author_params
        flash[:success] = t "flash.author.update_success"
        redirect_to admin_author_path @author
      else
        render :edit
      end
    end

    def destroy
      if @author.destroy
        flash[:success] = t "flash.author.destroy_success"
      else
        flash[:danger] = t "flash.author.destroy_fail"
      end
      redirect_to admin_authors_path
    end

    private
    def author_params
      params.require(:author).permit :name, :description, :avatar, book_ids: []
    end

    def find_author
      @author = Author.find_by id: params[:id]
      unless @author
        flash[:danger] = t "flash.author.find_fail"
        redirect_to admin_authors_path
      end
    end

    def load_books
      @books = Book.all
    end
  end
end
