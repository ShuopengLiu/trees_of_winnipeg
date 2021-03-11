Rails.application.routes.draw do
  # get 'parks/index'
  # get 'parks/show'
  # get 'neighbourhoods/index'
  # get 'neighbourhoods/show'
  # get 'categories/index'
  # get 'categories/show'
  # get 'trees/index'
  # get 'trees/show'
  root to: "home#index"
  resources :trees, only: %i[index show]
  resources :categories, only: %i[index show]
  resources :neighbourhoods, only: %i[index show]
  resources :parks, only: %i[index show]

end
