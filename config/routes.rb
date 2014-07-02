Rails.application.routes.draw do
  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'profile' => 'site#profile'
  get 'selector' => 'site#selector'
  get 'terms' => 'site#terms'
end
