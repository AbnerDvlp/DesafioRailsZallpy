class GenresController < ApplicationController
  #------------------------------------------------------------------------

  def index
    @genres = Genre.all
  end

  #------------------------------------------------------------------------
  def new
    @genre = Genre.new
  end

  #------------------------------------------------------------------------
  def show
    @genre = Genre.find(params[:id])
  end

  #------------------------------------------------------------------------
  def edit
    @genre = Genre.find(params[:id])
  end

  #------------------------------------------------------------------------
  def create
    @genres = Genre.new(genre_params)
    respond_to do |format|
      if @genres.save
        format.html { redirect_to genres_index_path, notice: 'Done' }
      else
        format.html { render :new }
      end
    end
  end
 #------------------------------------------------------------------------
  def update
    @genres = Genre.find(params[:id])
    respond_to do |format|
      if @genres.update(genre_params)
        format.html { redirect_to genres_index_path, notice: 'Done' }
      else
        format.html { render :edit }
      end
    end
  end

 #------------------------------------------------------------------------  def destroy
  def destroy
    @genres = Genre.find(params[:id])
    @genres.destroy

    respond_to do |format|
      format.html { redirect_to genres_index_path, notice: 'Done' }
    end
  end
#------------------------------------------------------------------------
  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
