Rails.application.routes.draw do
  root :to => 'welcome#index'

  devise_for :wives,    only: []
  devise_for :hasbands, only: []

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resource :hasbands, only: [:create] do
      get "search_partner", :on => :collection
    end
    resource :wives,    only: [:create] do
      get "search_partner", :on => :collection
    end
    resource :families, only: [:create] do
      get "search", :on => :collection
    end
    resource :children,   only: [:create]
    resources :questions,  only: [:index, :show]
  end

end
