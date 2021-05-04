Rails.application.routes.draw do
  resources :projects, only: %i[show destroy new create index]
  resources :groups, only: %i[show destroy new create index update edit]
  resources :users, only: %i[show update destroy index edit new create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
end
