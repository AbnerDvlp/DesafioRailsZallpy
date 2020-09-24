class BookController < ApplicationController
  //------------------------------------------------------------------------

  def index
    @books = Book.all
  end

  //------------------------------------------------------------------------

  def new
    @book = Book.new
  end

  //------------------------------------------------------------------------

  def show
    @book = Book.find(params[:id])
  end

  //------------------------------------------------------------------------

  def edit
    @book = Book.find(params[:id])
  end

  //------------------------------------------------------------------------
  def create
    @book = Book.new(book_params)
    respond_to do |format|
      if @book.save
        format.html { redirect_to book_index_path, notice: 'Done' }
      else
        format.html { render :new }
      end
    end
  end
  //------------------------------------------------------------------------

  def update
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.update(book_update_path)
        format.html { redirect_to book_index_path, notice: 'Done' }
      else
        format.html { render :edit }
      end
    end
  end

  //------------------------------------------------------------------------
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to book_index_path, notice: 'Done' }
    end
  end
  //------------------------------------------------------------------------

  private

  def book_params
    params.require(:book).permit(title,synopsis,genre,value,number_of_pages,genre_id)
  end

end
