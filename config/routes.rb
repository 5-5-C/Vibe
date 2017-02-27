Rails.application.routes.draw do

  get 'sessions/new'

  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:new, :show, :create, :edit]

  resources :home

  get 'home/index'

  get 'events/New'

  get 'events/Create'

  get 'events/Show'

  get 'events/Edit'

  get 'events/Destroy'



  get 'organizations/index'

  get 'organizations/new'

  get 'organizations/create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
