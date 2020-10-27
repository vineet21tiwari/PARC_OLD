Rails.application.routes.draw do
 root 'pages#home'
 get 'signup', to: 'users#new'
 get 'admin', to: 'admins#show'
 get 'lessons', to: 'lessons#show'
 resources :users, except: [:new]
 get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
