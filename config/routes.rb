Rails.application.routes.draw do
  resources :news
  get 'pages/index'
  root 'pages#index'
  get 'sessions/new'
  resources :users
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
