Rails.application.routes.draw do
  get 'user/create'
  get 'user/update'
  get 'walls/:id', to: 'walls#show'
  get 'walls', to: 'walls#index'

  post 'walls/create', to: 'walls#create'
  patch 'walls/:id/edit', to: 'walls#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
