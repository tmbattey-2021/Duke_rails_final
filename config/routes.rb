Rails.application.routes.draw do
  
  root "main#index"

  get "/", to: "main#index"
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/api/v1/app/status', to: 'application#status'
  
  resources:users
  get "signup" => "users#new", :as => "signup"
end
