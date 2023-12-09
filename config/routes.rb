Rails.application.routes.draw do
  # routes for the search bar, about, home corresponding to the navigation menu
  get 'search', to: 'search#index'
  get '/', to: 'home#index', as: 'root'
  get '/about', to: 'about#index', as: 'about'

  # routes for login session controller with 3 methods
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # routes for admin, userhome and your-quotes page
  get '/admin', to: 'home#aindex'
  get '/userhome', to: 'home#uindex'
  get '/your-quotes', to: 'home#uquotes'

  # auto generated resouces pages when using Scaffold command
  resources :quote_categories
  resources :quotes
  resources :philosophers
  resources :categories
  resources :users
  
end
