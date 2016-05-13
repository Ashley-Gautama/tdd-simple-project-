Rails.application.routes.draw do
  root 'movies#index'
  devise_for :users

  resources :actors
  resources :movies

end
