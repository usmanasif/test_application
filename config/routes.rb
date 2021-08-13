Rails.application.routes.draw do
  devise_for :users

  resources :gifs

  root to: 'dashboard#index'
end
