Rails.application.routes.draw do
  root 'book/index'
  get 'genres/index'
  get 'genres/new'
  get 'genres/show'
  get 'genres/edit'
  get 'genres/create'
  get 'genres/update'
  get 'genres/destroy'
  get 'books/index'
  get 'books/new'
  get 'books/show'
  get 'books/edit'
  get 'books/create'
  get 'books/update'
  get 'books/destroy'

end
