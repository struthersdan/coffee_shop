Rails.application.routes.draw do
  get 'products/index'

  get 'customers/create'

  root 'products#index', as: :products

  devise_for :customers, :controllers => { registrations: 'registrations' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
