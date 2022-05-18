Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#When starting the Rails server (rails s), you can set this to be the main page
root "articles#index"
#GET /articles requests are mapped to the index ACTION of the Articles CONTROLLER
#get "/articles", to: "articles#index"
resources :articles
#run rails routes to see all routes


end
