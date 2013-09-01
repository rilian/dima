Dima::Application.routes.draw do
  root to: 'home#index'

  scope :api do
    get "/base_images(.:format)" => "base_images#index"
    get "/base_images/:id(.:format)" => "base_images#show"
  end

end
