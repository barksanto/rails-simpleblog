Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  # we want it to go TO the pages controller and the about view
  get 'about', to: 'pages#about', as: 'about'

  resources :posts
end
