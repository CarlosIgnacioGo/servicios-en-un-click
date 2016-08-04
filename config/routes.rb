Rails.application.routes.draw do
  resources :categories
  devise_for :users

  resources :services do 
    resources :comments
  end
  
  root 'main#index'
end

