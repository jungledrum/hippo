Hippo::Application.routes.draw do

  root :to => 'index#index'

  match 'index/collect' => 'index#collect'

  resources :user, do
    collection do
      get 'connect'
      get 'callback'
      get 'logout'
    end
  end
end
