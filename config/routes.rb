Rails.application.routes.draw do
  devise_for :users
  resources :items do
    member do
      delete :purge_picture
      delete :purge_uploads
    end
  end

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/items/:id/purge_picture', to: 'items#purge_picture', as: :DELETE
  get 'uploads/:id/purge', to: 'uploads#purge', as: 'purge_uploads'

  get 'home', to: 'application#home'
  root 'application#home'

end
