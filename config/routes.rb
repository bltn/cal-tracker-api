Rails.application.routes.draw do
  post '/login', to: 'logins#login'

  resources :days, only: [:index, :create, :destroy] do
    resources :meal_entries, only: [:create, :destroy]
  end
end
