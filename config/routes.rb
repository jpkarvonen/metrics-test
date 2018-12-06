Rails.application.routes.draw do
  devise_for :users

  resources :registered_applications

  get 'welcome/about'
  root 'registered_applications#index'
end
