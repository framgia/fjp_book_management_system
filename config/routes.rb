Rails.application.routes.draw do
  devise_for :users

  root "static_pages#show", page: "home"
  get "/pages/:page" => "static_pages#show"

  resources :search, only: :index

  namespace :admin do
    root "static_pages#show", page: "dashboard"
    get "/pages/:page" => "static_pages#show"
    resources :users
    resources :authors do
      resources :books
    end
    resources :books
    resources :categories
    resources :publishers do
      resources :books
    end
  end
end
