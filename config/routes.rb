Rails.application.routes.draw do
  resources :portfolios
  root 'static_pages#index';
  get 'static_pages/index'
  get 'admins/dashboard', as: 'dashboard'



  scope module: 'static_pages' do
    namespace :index, path: 'static_pages' do
      get 'services'
      get 'portfolio'
      get 'contact'
      get 'home'
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
