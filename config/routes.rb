Rails.application.routes.draw do
  resources :cases, only: [:new, :create, :update, :edit, :show]

  get '/geoloc', to: 'cases#geoloc'
  get '/time_win', to: 'cases#time_win'

  get 'edit_agent', to: 'cases#edit_agent'
  get 'update_agent', to: 'cases#update_agent'
  get 'update_way', to: 'cases#update_way'
  get 'edit_way', to: 'cases#edit_way'
  get 'edit_photo', to: 'cases#edit_photo'
  get 'update_photo', to: 'cases#update_photo'
  get 'case_end', to: 'cases#case_end'

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"

end
