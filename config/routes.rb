Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'books/new'
  # get 'books/crate'
  # get 'books/index'
  # get 'books/show'
  devise_for :users
  root to: "homes#top"
  resources :users
  resources :books
  resources :post_images

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
