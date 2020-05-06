Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dogs, only: [:create] do
        resources :posts
      end
      resources :posts, only: [:index] do 
        resources :comments, only: [:create]
      end
    end
  end
end
