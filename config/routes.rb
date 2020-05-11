Rails.application.routes.draw do
  resources :articles
  resources :votes
  post 'articles/vote/id', to: 'votes#create', as: 'article_vote_create'
  get 'articles/search/:query', to: 'categories#index', as: 'article_categories'
  delete 'articles/votes/:id', to: 'votes#destroy', as: 'article_vote_destroy'
  devise_for :users, controllers:  { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
end
