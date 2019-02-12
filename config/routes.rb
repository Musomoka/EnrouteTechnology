Rails.application.routes.draw do
  
  resources :contacts
  devise_for :users 
  get 'static_pages/index'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get 'admins/index', controller: "admins#index", as: 'admins'
  
  resource :admin do
    resources :abouts
    resources :services
    resources :portfolios
  end
     

  root 'static_pages#index'; 
  
   
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
