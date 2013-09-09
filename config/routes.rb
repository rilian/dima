Dima::Application.routes.draw do
  root to: 'home#index'

  namespace :api do
    resources :images
  end

  # Passthrough to frontend
  get '/' => 'home#index'
  get '/images' => 'home#index'
  get '/images/*page' => 'home#index'
end
