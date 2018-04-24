Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users do 
    resources :photos
  end

  root to: 'users#index'

  #get '/users/:id', to: 'users#show'

  #get '/users/:id/edit', to: 'users#edit'

 # patch '/users/:id/edit', to: 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
