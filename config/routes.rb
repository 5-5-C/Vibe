Rails.application.routes.draw do

  get 'timeslots/index'

  get 'timeslots/show'

  get 'timeslots/new'

  get 'timeslots/create'

  get 'timeslots/edit'

  get 'timeslots/update'

  get 'timeslots/destroy'

  get 'index/show'

  get 'index/new'

  get 'index/create'

  get 'index/edit'

  get 'index/update'

  get 'index/destroy'

  root 'home#index'


  resources :sessions, only: [:new, :create, :destroy]

  resources :users

  resources :home

  resources :home, only: [:index]

  get"/events/new" => "events#new"
  resources :events

  resources :organizations



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
