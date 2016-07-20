Rails.application.routes.draw do

  root "companies#search" 
  resources :companies, only: [:show, :index]
  get '/search', to: 'companies#search'

end
