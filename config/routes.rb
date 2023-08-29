Rails.application.routes.draw do
  get 'registrations/after_sign_up_path_for'
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  resources :users
  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
