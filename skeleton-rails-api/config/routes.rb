Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :users
  resources :events do
    member do
      get 'pending'
      post 'flag'
    end
    resources :rsvps
  end

  # get '/auth/facebook/callback', to: 'users#create'
end

