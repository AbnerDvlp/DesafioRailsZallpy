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
    @report_maior_livro
    @report_livro_mais_caro
    @report_total_de_livros
    @report_total_de_valor
    @report_total_de_paginas
    @report_ultimo_livro
    @genero_mais_ultilizado







  end
  #------------------------------------------------------------------------
  private

  def books_params
    params.require(:book).permit(:title,:synopsis,:value,:number_of_pages,:genre_id)
  end

end
