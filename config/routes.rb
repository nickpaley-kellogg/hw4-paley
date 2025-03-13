# config/routes.rb

Rails.application.routes.draw do
  root to: redirect('/login')  # This redirects to the login page directly

  # Other routes...
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # More routes...


  # Routes for signup
  get 'signup', to: 'users#new', as: 'signup'        # Show signup form
  post 'signup', to: 'users#create'                   # Handle signup form submission

  # Your other routes like places, entries, etc.
  resources :places
  resources :entries
end

# config/routes.rb
Rails.application.routes.draw do
  root 'sessions#new'  # Redirect to login page on root

  resources :sessions, only: [:new, :create, :destroy]  # Provides login (new), create, and logout (destroy) routes

  # Other routes (e.g., places, users) go here
end
