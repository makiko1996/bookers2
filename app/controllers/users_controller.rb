class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.all
    @book = Book.new
  end
  
  def index
    @book = Book.new
    @users = User.all
    @current_user = current_user
    
  end

  
end
