PullRequester::Application.routes.draw do
  resources :watches
  resource :account, only: [:edit, :update]

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  match '/ping' => 'home#ping'
  get '/account' => 'accounts#edit'
  get '/repositories' => 'watches#repositories', as: :repositories
  put '/repositories' => 'watches#update_repositories', as: :update_repositories

  root to: "home#index"
end
