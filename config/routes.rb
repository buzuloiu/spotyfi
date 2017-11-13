Rails.application.routes.draw do

  resources :songs, :users
  root to: 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'song/list'
  get 'song/new'
  post 'song/create'
  patch 'song/update'
  get 'song/list'
  get 'song/show'
  get 'song/edit'
  get 'song/delete'
  get 'song/update'
  get 'book/show_subjects'

  get 'users/new'
  get 'users/show'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'



end
