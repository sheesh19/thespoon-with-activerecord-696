Rails.application.routes.draw do

  # 7 CRUD ROUTES
  
  # VERB "PATH", to: "CONTROLLER#ACTION"

  # INDEX: SEE ALL RESTAURANTS
  get 'restaurants', to: 'restaurants#index'

  # CREATE NEW RESTAURANT
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant # form route; needs to be above show route
  post 'restaurants', to: 'restaurants#create' # submit action for form

  # UPDATE EXISTING RESTAURANT
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant # our edit form
  patch 'restaurants/:id', to: 'restaurants#update' # submit action for our edit form

  # SHOW: SEE ONE RESTAURANT
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # DELETE ONE RESTAURANT
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants # generates all 7 CRUD routes
  # resources :restaurants, only: [ :index, :show, :destroy ]
end
