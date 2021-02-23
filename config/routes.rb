Rails.application.routes.draw do
  root "things#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :things
  get '/things', to: "things#index"
  get '/things/new', to: 'things#new'
  get '/things/:id', to: "things#show"
  get '/things/:id/edit', to: "things#edit"
  post '/things', to:"things#create"
  patch '/things/:id', to: "things#update"

  delete '/things/:id', to: "things#destroy"
 
  delete '/thingsyo/:asdfhjg', to: "things#taco"
end
