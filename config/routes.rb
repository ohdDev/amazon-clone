Rails.application.routes.draw do
  resources :items do
    member do
      delete :purge_picture
    end
  end

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/items/:id/purge_picture', to: 'items#purge_picture', as: :DELETE

end
