Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'

  get 'categories/show'

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get '/contact' => 'pages#contact',  as: :contact
  get '/about' => 'pages#about',  as: :about
  get 'pages/about'

  get 'products/index'

  get 'customers/create'

  root to: "products#index"

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :categories, only: [:show]
  resources :charges, only: %i[new create]
  resources :pages

  devise_for :customers, :controllers => { registrations: 'registrations' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
