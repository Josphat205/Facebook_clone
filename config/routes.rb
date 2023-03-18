Rails.application.routes.draw do
  devise_for :users,controllers: { sessions: 'devise/sessions', registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  resources :users do
    resources :posts do
      resources :comments
      resources :likes, only: [:create]
    end
  end

  # Defines the root path route ("/")
  root "posts#index"
end
