Rails.application.routes.draw do
  get 'users/create', to: 'users#create'
  get 'users', to: 'users#index'
  get 'validate', to: 'users#validate' 
  post 'signin', to: 'users#signin'
  patch 'users/:id/update', to: 'users#update'
  delete 'users/:id', to: 'users#delete'
  
  get 'reviews/:id', to: 'reviews#show'
  get 'reviews', to: 'reviews#index'
  post 'reviews', to: 'reviews#create'
  patch 'reviews/:id', to: 'reviews#update'
  delete 'reviews/:id', to: 'reviews#delete'
  
  get 'walls/:id', to: 'walls#show'
  get 'walls', to: 'walls#index'
  post 'walls/create', to: 'walls#create'
  patch 'walls/:id/edit', to: 'walls#edit'
 
  
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
