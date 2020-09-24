class GenreController < ApplicationController
  //------------------------------------------------------------------------

  def index
    @genres = Genre.all
  end

  //------------------------------------------------------------------------

  def new
    @genre = Genre.new
  end

  //------------------------------------------------------------------------

  def show
    @genre = Genre.find(params[:id])
  end

  //------------------------------------------------------------------------

  def edit
    @genre = Genre.find(params[:id])
  end

  //------------------------------------------------------------------------
  def create
    @genre = Genre.new(book_params)
    respond_to do |format|
      if @genre.save
        format.html { redirect_to genre_index_path, notice: 'Done' }
      else
        format.html { render :new }
      end
    end
  end
  //------------------------------------------------------------------------

  def update
    @genre = Book.find(params[:id])
    respond_to do |format|
      if @genre.update(genre_update_path)
        format.html { redirect_to genre_index_path, notice: 'Done' }
      else
        format.html { render :edit }
      end
    end
  end

  //------------------------------------------------------------------------
  def destroy
    @genre = Book.find(params[:id])
    @genre.destroy

    respond_to do |format|
      format.html { redirect_to genre_index_path, notice: 'Done' }
    end
  end
  //------------------------------------------------------------------------

  private

  def book_params
    params.require(:genre).permit(name)
  end

end
