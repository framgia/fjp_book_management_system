Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  root "static_pages#show", page: "home"
  get "/pages/:page" => "static_pages#show"

  resources :search, only: :index

  namespace :admin do
    root "static_pages#show", page: "dashboard"
    get "/pages/:page" => "static_pages#show"
    resources :users, except: [:show, :edit]
    resources :requests
    resources :authors do
      resources :books
    end

    resources :books do
      resources :book_items
    end
    resources :categories, except: [:show, :edit]
    resources :publishers do
      resources :books
    end
  end

  resources :books, only: [:index, :show] do
    resource :comments, only: [:create]
    resource :suggest_books, only: :create
  end

  resources :categories, only: [:index, :show]
  resources :borrows, only: :create
  resources :explorer, only: :index
  resources :tags, only: [:index, :show]

  namespace :blog do
    root "dashboard#index"
    resources :posts, only: [:index, :show, :create, :edit, :update, :destroy]
  end

  resources :read_online, only: :show
  resources :authors, only: :show
  resources :announcements, only: [:index, :show]
  resource :not_found, only: :show
  resources :requests, only: [:index, :create, :update]
  resources :notifications, only: :index
end
