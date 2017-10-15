Rails.application.routes.draw do
  resources :cases, only: [:create, :show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
  get '/add_names', to: 'cases#add_names'
  get '/case_end', to: 'cases#case_end'
end
