Rails.application.routes.draw do
  resources :lessons
  resources :instructors
  resources :subjects
  resources :users

  get 'users/index'

  get 'home/index'

  get 'users/new'
  root 'home#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/courses', 		to: 'lessons#index'
  get '/instructors', 	to: 'instructors#index'
  get '/subjects', 		to: 'subjects#index'
  #post '/courses', 	to: 'courses#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
