Rails.application.routes.draw do
  
  get 'events/New'

  get 'events/Create'

  get 'events/Show'

  get 'events/Edit'

  get 'events/Destroy'



  get 'users/new'

  get 'users/show'

  get 'users/create'

  get 'users/edit'

  get 'organizations/index'

  get 'organizations/new'

  get 'organizations/create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
