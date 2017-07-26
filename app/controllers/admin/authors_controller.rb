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
      @images = @author.images.build
    end

    def create
      @author = Author.new author_params
      if @author.save
        save_images if params[:images]
        flash[:success] = t "flash.author.create_success"
        redirect_to admin_author_path @author
      else
        render :new
      end
    end

    def edit
      @images = @author.images.build
    end

    def update
      update_images if params[:images]
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
      params.require(:author).permit :name, :description,
        book_ids: [], images_attributes: [:id, :url]
    end

    def find_author
      @author = Author.find_by id: params[:id]
      unless @author
        flash[:danger] = t "flash.author.find_fail"
        redirect_to admin_authors_path
      end
    end

    def save_images
      params[:images]["url"].each do |image|
        @images = @author.images.create!(url: image)
      end
    end

    def update_images
      author_images = @author.images
      author_images.each(&:destroy)
      if author_images.present?
        params[:images]["url"].each do |image|
          @images = author_images.create!(url: image)
        end
      end
    end

    def load_books
      @books = Book.all
    end
  end
end
