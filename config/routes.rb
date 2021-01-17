Rails.application.routes.draw do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      post '/users', to: 'users#create'
      get '/lessons', to: 'lessons#index'
      get '/lessons/:id', to: 'lessons#show'
      get '/subjectlessons', to: 'subject_lessons#index'
      get '/subjects', to: 'subjects#index'
      delete '/logout', to: 'auth#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
