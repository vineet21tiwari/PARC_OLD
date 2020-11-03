Rails.application.routes.draw do
 root 'pages#home'
 get 'signup', to: 'users#new'
 get 'admin', to: 'admins#show'
 get 'lessons', to: 'lessons#show'
 resources :lessons do
   collection do
     get :lesson1
     get :lesson2
     get :lesson3
     get :lesson4
     get :lesson5
     get :lesson6
     get :lesson7
     get :lesson8
     get :lesson9
     get :lesson10
     get :lesson11
     get :lesson12
     get :lesson13
     get :lesson14
     get :lesson15
   end
 end
 resources :users, except: [:new]
 get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
