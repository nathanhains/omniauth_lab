Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get '/home', to: 'welcome#home'

  root 'welcome#home'
end
