
# frozen_string_literal: true

Rails.application.routes.draw do
  get 'answer', to: 'cont#answer'
  root 'cont#main'
end
