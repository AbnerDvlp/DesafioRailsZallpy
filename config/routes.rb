Rails.application.routes.draw do

  get 'books/index',to:'books#index', as: 'books_index'
  get 'books/new',to:'books#new', as: 'books_new'
  get 'books/:id/show',to:'books#show', as: 'books_show'
  get 'books/:id/edit',to:'books#edit', as: 'books_edit'
  get 'books/create',to:'books#create', as: 'books_create'
  get 'books/update',to:'books#update', as: 'books_update'
  get 'books/destroy',to:'books#destroy', as: 'books_destroy'


  get 'genres/index',to:'genres#index', as: 'genres_index'
  get 'genres/new',to:'genres#new', as: 'genres_new'
  get 'genres/:id/show',to:'genres#show', as: 'genres_show'
  get 'genres/:id/edit',to: 'genres#edit', as: 'genres_edit'
  get 'genres/create',to:'genres#create', as: 'genres_create'
  get 'genres/update',to:'genres#update', as: 'genres_update'
  get 'genres/destroy',to:'genres#destroy', as: 'genres_destroy'

  resources :books
  resources :genres

  root 'books#index'

end
