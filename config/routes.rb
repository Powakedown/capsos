Rails.application.routes.draw do
  resources :cases, only: [:new, :create, :update, :edit, :geoloc, :show]
  get '/geoloc', to: 'cases#geoloc'


  resource :geo_ip_request, controller: :geo_ip_request
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

end
