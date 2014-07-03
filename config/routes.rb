Rails.application.routes.draw do
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms' => 'site#terms'

  get 'profile/profile' => 'profile#profile'
  get 'profile/user_data' => 'profile#user_data'
  get 'profile' => 'profile#index'
  post 'profile' => 'profile#index'

  get 'selector' => 'selector#index'

  get 'itinerary' => 'itinerary#index'

end
