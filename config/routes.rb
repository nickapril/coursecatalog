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

  
  get 'enrollment/index'

  get 'enrollment/new'

  get 'enrollment/edit'

  post 'enrollment/create'

  get 'enrollment/update'

  get 'enrollment/destroy'

  get 'search/index'

  get 'search/new'

  get 'search/edit'

  get 'search/create'

  get 'search/update'

  get 'search/destroy'

  get 'result/index'

  get 'subject/index'

  get 'subject/new'

  get 'subject/edit'

  get 'subject/create'

  get 'subject/update'

  get 'subject/destroy'

  get 'course/index'

  get 'course/new'

  get 'course/edit'

  get 'course/create'

  get 'course/update'

  get 'course/destroy'

  get 'instructor/index'

  get 'instructor/new'

  get 'instructor/edit'

  get 'instructor/create'

  get 'instructor/update'

  get 'instructor/destroy'  
  #post '/courses', 	to: 'courses#new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
