Rails.application.routes.draw do
  root 'fetcher#index'
  get '/count', to: 'fetcher#count'
  get 'converter', to: 'converter#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
