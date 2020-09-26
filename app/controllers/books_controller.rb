class BooksController < ApplicationController
  #------------------------------------------------------------------------

  def index
    @books = Book.all
  end

  #------------------------------------------------------------------------

  def new
    @book = Book.new
  end

  #------------------------------------------------------------------------

  def show
    @book = Book.find(params[:id])
  end

  #------------------------------------------------------------------------

  def edit
    @book = Book.find(params[:id])
  end

  #------------------------------------------------------------------------

  def create
    @books = Book.new(books_params)
    respond_to do |format|
      if @books.save
        format.html { redirect_to books_index_path, notice: 'Done' }
      else
        format.html { render :new }
      end
    end
  end
  #------------------------------------------------------------------------

  def update
    @books = Book.find(params[:id])
    respond_to do |format|
      if @books.update(books_params)
        format.html { redirect_to books_index_path, notice: 'Done' }
      else
        format.html { render :edit }
      end
    end
  end

  #------------------------------------------------------------------------
  def destroy
    @books = Book.find(params[:id])
    @books.destroy

    respond_to do |format|
      format.html { redirect_to books_index_path, notice: 'Done' }
    end
  end
  #------------------------------------------------------------------------
  def report
    @books = Book.all
    @report_ultimo_livro= Book.last

    report_maior_livro = 0
    @nome_maior_livro = ""
    @report_livro_mais_caro =0
    @report_total_de_livros = 0
    @report_total_de_valor = 0
    @report_total_de_paginas =0
    @genero_mais_ultilizado = 0
    aux_genre = []
    aux_genre_2 = 0

    @books.each do |book|

      @report_total_de_livros = @report_total_de_livros + 1
      @report_total_de_valor = book.value + @report_total_de_valor
      @report_total_de_paginas =book.number_of_pages + @report_total_de_paginas

      if book.number_of_pages > report_maior_livro
        report_maior_livro = book.number_of_pages
        @nome_maior_livro = book.title
      end

      if book.value >  @report_livro_mais_caro
        @report_livro_mais_caro = book.value
      end

      aux_genre = Book.where(genre_id:book.genre_id)

      if aux_genre.length > aux_genre_2
      @genero_mais_ultilizado = book.genre_id
      end

    end
  end
  #------------------------------------------------------------------------
  private

  def books_params
    params.require(:book).permit(:title,:synopsis,:value,:number_of_pages,:genre_id)
  end

end
