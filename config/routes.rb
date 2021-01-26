Rails.application.routes.draw do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      post '/users', to: 'users#create'
      delete '/logout', to: 'auth#destroy'

      get '/lessons', to: 'lessons#index'
      get '/lessons/:id', to: 'lessons#show'
      post '/lessons', to: 'lessons#create'

      post '/solutions',to: 'solutions#create'
      get '/solutions', to: 'solutions#index'

      get '/subjectlessons', to: 'subject_lessons#index'
      get '/subjects', to: 'subjects#index'

      get '/quizzes', to: 'quizzes#index'
      
      post '/questions', to: 'questions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
