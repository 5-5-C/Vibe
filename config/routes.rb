Rails.application.routes.draw do


  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:new, :show, :create, :edit]

  resources :home

  resources :home, only: [:index]

  resources :events, only: [:new, :create, :show, :edit, :destroy]

  resources :organizations, only: [:index, :new, :create]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
