Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :stories, only: [:create, :index, :show, :update, :destroy]
    resources :claps, only: [:create, :destroy, :show]
    resources :lists, only: [:create, :destroy, :index, :show]
  end

  root "static_pages#root"
end