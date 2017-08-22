Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  root "static_pages#show", page: "home"
  get "/pages/:page" => "static_pages#show"

  resources :search, only: :index
  resources :users, only: :show

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
    resources :comments, only: [:create, :destroy] do
      resources :votes, only: [:create, :destroy]
    end
    resource :suggest_books, only: :create
    resource :rate, only: [:create]
    resources :book_marks, only: [:create, :destroy]

  end

  resources :categories, only: [:index, :show]
  resources :borrows, only: [:create, :update]
  resources :explorer, only: :index
  resources :tags, only: [:index, :show]

  namespace :blog do
    root "dashboard#index"
    resources :posts, only: [:index, :show, :create, :edit, :update, :destroy] do
      resources :comments, only: [:create, :destroy] do
        resources :votes, only: [:create, :destroy]
      end
    end
  end

  resources :read_online, only: :show
  resources :authors, only: :show
  resources :announcements, only: [:index, :show]
  resources :not_found, only: :index
  resources :requests, only: [:index, :create, :update]
  resources :notifications, only: [:index, :update]
  patch "/make_all_as_read" => "make_all_as_read#update"
  resources :feedback, only: [:index, :new, :create, :show]
end
