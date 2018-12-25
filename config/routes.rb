Rails.application.routes.draw do
  resources :portfolios
  root 'static_pages#index';
  get 'static_pages/index'
  get 'admins/dashboard', as: 'dashboard'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
