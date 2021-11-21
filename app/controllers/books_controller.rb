class BooksController < ApplicationController
  
  def new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end
  
  def index
    @book = Book.new
    @books = Book.all
    @current_user = current_user
  
  end
  
  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end
  
  def destroy
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
  
end
