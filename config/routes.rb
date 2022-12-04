Rails.application.routes.draw do
  get 'search/index'
  root 'article#index'
  resources 'article', only: [:index]
  resources 'search', only: [:index]
  post 'article/search', to: 'article#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
