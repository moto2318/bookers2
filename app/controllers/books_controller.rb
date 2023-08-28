class BooksController < ApplicationController
  def new
  end

  def create
    @book = Book.new(book_params)
    @book.user.id = current_user.id
    if @book.save
      redirect_to '/book'
    else
      render :index
    end
  end

  def index
    @books = Book.all
  end

  def show
  end
  
  def edit
    is_matching_login_user
    @book = Book.find(params[:id])
    
  end
  
  def update
    is_matching_login_user
    book = Book.find(params[:id])
    if book.update(list_params)
    redirect_to book_path(book.id)
    else
    render :edit_book
    end
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
  
  def is_matching_login_user
    book = Book.find(params[:id])
    unless book.id == current_user.id
      redirect_to post_images_path
    end
  end
  
end
