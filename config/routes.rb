Rails.application.routes.draw do
  root "messages#index"
  resources :messages, only: %i(index create)
end
