Rails.application.routes.draw do
  devise_for :wives,    only: []
  devise_for :hasbands, only: []

  namespace :v1, defaults: { format: :json } do
    resource :login,    only: [:create], controller: :sessions
    resource :hasbands, only: [:create]
    resource :wives,    only: [:create]
  end

end
