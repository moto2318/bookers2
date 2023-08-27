class BooksController < ApplicationController
  def new
  end

  def crate
    @book = Book.new(book_params)
    @book.user.id = current_user.id
    @book.save
    redirect_to '/book'
  end

  def index
    @books = Book.all
  end

  def show
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(list_params)
    redirect_to book_path(book.id)
  end
  
  private
  def book_params
    params.require(:list).permit(:title, :body, :image)
  end
  
end
