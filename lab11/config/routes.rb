Rails.application.routes.draw do
  root 'handler#send'
  get '/answer', to: 'handler#answer'
end
