Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#GET /articles requests are mapped to the index ACTION of the Articles CONTROLLER
get "/articles", to: "articles#index"


end
