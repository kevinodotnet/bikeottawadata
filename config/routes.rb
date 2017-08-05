Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get '/auth/:provider/callback', to: 'omniauthcallback#create'
end
