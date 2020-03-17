Rails.application.routes.draw do
  devise_for :users,
   controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'pages#home'
  get '/users/:id', to: 'users#show', as: 'user'
  delete 'users/:id', to:'users#destroy'
  resources :posts, only: %i(index show new create destroy) do
    resources :photos, only: %i(create)
    
    resources :likes, only: %i(create destroy)
    
    resources :comments, only: %i(create destroy)
  end
end
