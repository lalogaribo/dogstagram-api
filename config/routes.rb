Rails.application.routes.draw do
  resources :comments
  namespace :api do
    namespace :v1 do
      resources :dogs, only: [:create]
      resources :posts
    end
  end
end
