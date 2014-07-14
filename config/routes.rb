Rails.application.routes.draw do
  # devise_for :users, :controllers =>
  devise_for :users
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms' => 'site#terms'
  get 'fly' => 'site#flyIcon'


  get 'profile/profile' => 'profile#profile'
  get 'profile/user_data' => 'profile#user_data'
  get 'profile' => 'profile#index'
  post 'profile' => 'profile#index'

  get 'selector' => 'selector#index'
  post 'selector' => 'selector#search'


  get 'itinerary' => 'itinerary#index'
  post 'itinerary' => 'itinerary#create'
  get 'itinerary' => 'itinerary#create'



end
