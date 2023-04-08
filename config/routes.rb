Rails.application.routes.draw do
  root "welcome#index"

  get "/parks", to: "parks#index"
end
