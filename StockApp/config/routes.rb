Rails.application.routes.draw do

  root "companies#search" 
  resources :companies 
  get '/search', to: 'companies#search'

end
