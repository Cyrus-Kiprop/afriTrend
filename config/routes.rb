Rails.application.routes.draw do
  devise_for :users, controllers:  { registrations: 'registrations' }
  resources :articles
  resources :votes
  resources :categories, only: %i[index create show destroy]
  post 'articles/vote/id', to: 'votes#create', as: 'article_vote_create'
  get 'users/show/:id', to: 'users#show', as: 'user_homepage'
  get 'articles/search/:query', to: 'categories#index', as: 'article_categories'
  delete 'articles/votes/:id', to: 'votes#destroy', as: 'article_vote_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
end
