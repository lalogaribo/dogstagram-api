Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :dogs, only: [:create] do
        resources :posts
      end
      get '/posts', to: 'posts#index'
    end
  end
end
