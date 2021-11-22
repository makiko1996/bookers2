class BooksController < ApplicationController
  
  def new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
     redirect_to book_path(@book), notice: 'You have created book successfully .'
    else
      @books.all
     render :index
    end
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
