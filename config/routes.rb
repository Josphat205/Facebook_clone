Rails.application.routes.draw do
  devise_for :users,controllers: { sessions: 'devise/sessions', registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
