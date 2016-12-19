Rails.application.routes.draw do

  get 'users/new'

  root 'static_pages#home'
  get  '/news',    to: 'static_pages#news'
  get  '/about',   to: 'static_pages#about'
  get  '/help',    to: 'static_pages#help'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users


end