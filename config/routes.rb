Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :prototypes do
    resources :commments, except: [:show, :index]
  end
  resources :users, only: [:show, :edit, :update]
end
