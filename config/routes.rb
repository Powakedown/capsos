Rails.application.routes.draw do
  resources :cases, only: [:new, :create, :update, :edit, :geoloc, :show]
  get '/geoloc', to: 'cases#geoloc'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

end
