Dima::Application.routes.draw do
  scope :api do
    get "/images(.:format)" => "images#index"
    get "/images/:id(.:format)" => "images#show"
  end

  root to: "home#index"
end
