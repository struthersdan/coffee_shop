Rails.application.routes.draw do
  get 'orders/show'

  get 'charges/new'

  get 'charges/create'

  get 'categories/show'

  get 'carts/show'

  get '/contact' => 'pages#contact',  as: :contact
  get '/about' => 'pages#about', as: :about

  get '/products/show' => 'products#show', as: :show

  get 'pages/about'

  get 'customers/create'

  root to: 'products#index'

  resources :products, only: %i[index show]
  resource :cart, only: [:show]
  resources :order_items, only: %i[create update destroy]
  resources :categories, only: [:show]
  resources :charges, only: %i[new create]
  resources :pages
  resources :orders

  resources :charges, only: %i[new create]
  get 'thanks', to: 'charges#thanks', as: 'thanks'

  devise_for :customers, controllers: { registrations: 'registrations' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
