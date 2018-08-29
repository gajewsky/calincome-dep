Rails.application.routes.draw do
  resource :session, controller: 'clearance/sessions', only: [:create]

  get '/sign-in' => 'clearance/sessions#new', as: 'sign-in'
  delete '/sign-out' => 'clearance/sessions#destroy', as: 'sign-out'

  root to: 'expenses#index'
end
