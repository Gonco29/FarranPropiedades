Rails.application.routes.draw do
  resources :flats
  devise_for :users
  root to: "pages#home"
  resources :houses
end
