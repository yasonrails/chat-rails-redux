Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :channels, only: [] do
        resources :messages, only: [ :index, :create ]
      end
    end
  end
  
  resources :channels, only: [ :show ]
  # Defines the root path route ("/")
  root to: 'channels#show'
  # root "articles#index"
end
