Rails.application.routes.draw do
  devise_for :users

  root "static_pages#show", page: "home"
  get "/pages/:page" => "static_pages#show"

  patch "password", to: "passwords#update"
  get "edit_password", to: "passwords#edit"
  get "new_password", to: "passwords#new"
  resources :passwords
end
