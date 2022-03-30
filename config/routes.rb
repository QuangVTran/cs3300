Rails.application.routes.draw do
  resources :project2s
  root to:'projects#index'
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
