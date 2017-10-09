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

  root to: 'welcome#index'

  devise_for :wives,    only: []
  devise_for :hasbands, only: []

  namespace :v1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resource :hasbands, only: [:create] do
      get 'search_partner', on: :collection
    end
    resource :wives, only: [:create] do
      get 'search_partner', on: :collection
    end
    resources :families, only: [:create] do
      get 'search', on: :collection
      resources :talks, only: %i[index create] do
        get 'search_from_range', on: :collection
      end
      resources :must_todos, only: %i[index show create update destroy]
      resources :want_todos, only: %i[index show create update destroy]
      resources :schedules,  only: %i[index show create update destroy] do
        get 'search_from_range', on: :collection
      end
      resources :albums, only: %i[index show create update destroy]
    end
    resource :children, only: [:create]
    resources :questions, only: %i[index show]
    resources :question_answers, only: [:index, :create]do
      get 'my_answers', on: :collection
    end
  end

  require 'sidekiq/web'
  SupportSpousesCommunication::Application.routes.draw do
    mount Sidekiq::Web, at: '/sidekiq'
  end
end
