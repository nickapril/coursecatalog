Rails.application.routes.draw do
  resources :lesson_subjects

  resources :lessons
  resources :instructors
  resources :subjects
  resources :users


  root 'home#index'

  get 'users/index'

  get 'home/index'

  get 'users/new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/courses', 		to: 'lessons#index'

  get '/instructors', 	to: 'instructors#index'

  get '/subjects', 		to: 'subjects#index'

  get 'enrollments/index'

  get 'enrollments/new'

  get 'enrollments/create'

  post 'enrollments/create'

  get 'search/index'

  get 'result/index'

  get 'subject/index'

  get 'course/index'

  get 'instructor/index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
