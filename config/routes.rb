Rails.application.routes.draw do

  resources :songs,:users
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

end
