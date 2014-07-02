Rails.application.routes.draw do
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms' => 'site#terms'
  get 'profile' => 'site#profile'
  get 'selector' => 'site#selector'
end
