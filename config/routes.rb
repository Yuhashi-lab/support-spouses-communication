Rails.application.routes.draw do

  namespace :v1 do
    get 'albums/index'
  end

  namespace :v1 do
    get 'albums/show'
  end

  namespace :v1 do
    get 'albums/create'
  end

  namespace :v1 do
    get 'albums/update'
  end

  namespace :v1 do
    get 'albums/destroy'
  end

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
      resources :must_todos, only: [:index, :show, :create, :update, :destroy]
      resources :want_todos, only: [:index, :show, :create, :update, :destroy]
      resources :schedules,  only: [:index, :show, :create, :update, :destroy] do
        get "search_from_range", :on => :collection
      end
      resources :albums,     only: [:index, :show, :create, :update, :destroy]
    end
    resource :children,   only: [:create]
    resources :questions,  only: [:index, :show]
    resources :question_answers,  only: [:create]
  end

end
