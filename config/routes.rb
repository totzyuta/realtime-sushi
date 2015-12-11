Rails.application.routes.draw do
  root "messages#index"
  get "/auth/:provider/callback", to: "sessions#callback"
  post "/auth/:provider/callback", to: "sessoins#callback"
  get "/logout", to: "sessions#destroy", as: :logout
  resources :messages, only: %i(index create)
end
