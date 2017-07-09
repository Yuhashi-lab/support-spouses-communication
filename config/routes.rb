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
    resources :families, only: [:create] do
      get "search", :on => :collection
      resources :talks, only: [:index, :create] do
        get "search_from_range", :on => :collection
      end
    end
    resource :children,   only: [:create]
    resources :questions,  only: [:index, :show]
    resources :question_answers,  only: [:create]
  end

end
