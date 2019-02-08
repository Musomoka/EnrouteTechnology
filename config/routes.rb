Rails.application.routes.draw do
  
  devise_for :users do
    resources :portfolios
    root 'static_pages#index';
    get 'static_pages/index'
    resources :contacts, only: [:new, :create]
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    resources :services
    get 'admins/index', controller: "admins#index", as: 'admins'
    resource :admin do
      resources :abouts
    end
    
  end
 

 

match '/send_mail', to: 'contact#send_mail', via: 'post'
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
