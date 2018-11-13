Rails.application.routes.draw do
  devise_for :users
  root "albums#home"
  get "/home", to: "albums#home"
  # get "/", to: "albums#home", as: "home"
  resources :albums, :photos, :people
  resources :users, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
