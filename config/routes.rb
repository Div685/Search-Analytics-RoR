Rails.application.routes.draw do
  root 'article#index'
  get 'article/index'
  get 'search/index'
  resources 'article', only: [:index]
  resources 'search', only: [:index]
  post 'article/search', to: 'article#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
