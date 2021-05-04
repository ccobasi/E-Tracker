Rails.application.routes.draw do
  resources :groups
  resources :users, only: %i[show update destroy index edit new create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
end
