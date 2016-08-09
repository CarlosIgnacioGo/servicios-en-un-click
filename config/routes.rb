Rails.application.routes.draw do
  resources :categories

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :services do 
    resources :comments
  end
  
  root 'main#index'
end

