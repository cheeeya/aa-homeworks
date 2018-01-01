class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def new
    render :new
  end

  def create
    book = Book.new(book_params)
    if (book.save)

    else
      render json: books.errors.full_message, status :unprocessable_entity
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
