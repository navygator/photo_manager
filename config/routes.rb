VkTest::Application.routes.draw do
  resources :sessions
  resources :albums
  resources :pages

  match 'from_auth', to: 'sessions#from_auth'

  root to: 'pages#index'
end
