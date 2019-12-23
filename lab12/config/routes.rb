Rails.application.routes.draw do
  resources :users
  root 'auth#index'
  post '/', to: 'auth#index'
  get 'signout', to: 'auth#signout'
  get 'reg', to: 'user#new'
  get 'calculations', to: 'cont#main'
  get 'answer', to: 'cont#answer'
end
