Rails.application.routes.draw do
  resources :days, only: [:index, :create, :destroy] do
    resources :meal_entries, only: [:create]
  end
end