Rails.application.routes.draw do
  root to: "home#index"
  
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'

  namespace :admins do
    get 'dashboard', to: 'dashboard#index'
  end

  resources :posts
end
