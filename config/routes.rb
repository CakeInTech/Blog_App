Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   root "users#index"
  # Defines the root path route ("/")
  # root "articles#index"
  # Users
  get 'users/:id' => 'users#show'

  # Posts
  get 'users/:user_id/posts' => 'posts#index'
  get 'users/:user_id/posts/:id' => 'posts#show'
end
