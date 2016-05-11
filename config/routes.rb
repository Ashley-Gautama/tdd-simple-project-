Rails.application.routes.draw do
  devise_for :users

  resources :actors
  resources :movies

end
