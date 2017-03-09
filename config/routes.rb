Rails.application.routes.draw do

  root 'home#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :home
  resources :home, only: [:index]
  resources :organizations do
  resources :events
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
