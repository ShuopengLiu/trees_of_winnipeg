Rails.application.routes.draw do
  get 'parks/index'
  get 'parks/show'
  get 'neighbourhoods/index'
  get 'neighbourhoods/show'
  get 'categories/index'
  get 'categories/show'
  get 'trees/index'
  get 'trees/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
