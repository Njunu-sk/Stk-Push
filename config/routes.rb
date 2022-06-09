Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "push#index"
  post "payment" => "push#payment"
  get "callback" => "push#callback"
end
