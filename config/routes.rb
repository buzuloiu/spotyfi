Rails.application.routes.draw do

  get 'sessions/new'

  resources :songs, :users
  root to: 'sessions#new'
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

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


end
