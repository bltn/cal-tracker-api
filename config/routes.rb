Rails.application.routes.draw do
  resources :days, only: [:index, :create, :destroy]
end