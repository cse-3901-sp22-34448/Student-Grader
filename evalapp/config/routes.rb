Rails.application.routes.draw do
  get "/home/:name", to: 'students#homepage'
  get "/events", to: "events#index"
  get "/events/:id", to: "events#feedback"
end
