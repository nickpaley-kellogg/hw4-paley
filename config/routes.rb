# config/routes.rb
Rails.application.routes.draw do
  # Routes for login and signup
  get 'login', to: 'sessions#new', as: 'login'      # Show login form
  post 'login', to: 'sessions#create', as: 'sessions'  # Handle login form submission
  delete 'logout', to: 'sessions#destroy', as: 'logout' # Handle logout

  # Routes for signup
  get 'signup', to: 'users#new', as: 'signup'        # Show signup form
  post 'signup', to: 'users#create'                   # Handle signup form submission

  # Your other routes like places, entries, etc.
  resources :places
  resources :entries
end

