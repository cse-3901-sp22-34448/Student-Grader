Rails.application.routes.draw do
  root "sessions#new"

  get "/students", to: "students#show"
  get "/events", to: "events#index"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/signup", to: "students#new"
  post "/signup", to: "students#create"
  get "/feedback", to: "feedbacks#new"
  post "/feedback", to: "feedbacks#create"

  resources :events
  resources :feedbacks
  resources :students
end
