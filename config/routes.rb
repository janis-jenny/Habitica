Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show, :update, :edit]
  resources :habits, only: [:index, :new, :create, :show]
  resources :groups, only: [:index, :new, :create, :show]
  resources :repeat_days, only: [:create, :destroy]

  get '/external_habits', to: 'habits#external_habits'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  root 'sessions#index'
end
