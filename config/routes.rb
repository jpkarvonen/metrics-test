Rails.application.routes.draw do
  devise_for :users

  resources :registered_applications

  get 'welcome/about'
  root 'registered_applications#index'

  namespace :api, defaults: {format: :json } do
    match '/events', to: 'events#preflight', via: [:options]
    resources :events, only: [:create]
  end
end
