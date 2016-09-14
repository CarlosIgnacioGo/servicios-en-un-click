Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :services do
    # member do
    #   get 'publish'
    # end 
    # member do
    #   get 'unpublish'
    # end 
    resources :comments
  end
  
  root 'main#index'
end

