Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
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

  resources :books do
    resource :comments, only: [:create]
  end

  resources :categories, only: [:index, :show]
  resources :borrows, only: :create

  resources :explorer, only: :index
  resources :tags, only: [:index, :show]
end
