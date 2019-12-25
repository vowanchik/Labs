# frozen_string_literal: true

Rails.application.routes.draw do
  get 'cont/main'
  get 'cont/answer'
  root 'cont#main'
  # get '/answer', to: 'cont#answer'
  get 'answer', to: 'cont#answer', :as => 'answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
