Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'sessions/new'

  resources :songs, :artists, :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]



  root to: 'sessions#new'
  #root to: 'songs#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'songs/list'
  get 'song/new'
  post 'song/create'
  patch 'song/update'
  get 'song/list'
  get 'song/show'
  get 'song/edit'
  get 'song/delete'
  get 'song/update'
  get 'book/show_subjects'
  get 'songs/all', to: 'song#index'


  get 'users/new'
  get 'users/show'
  get 'users/activate'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


end
