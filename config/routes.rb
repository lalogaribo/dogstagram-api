Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dogs, only: [:create]
      resources :posts
      resources :comments, only: [:create]
    end
  end
end
