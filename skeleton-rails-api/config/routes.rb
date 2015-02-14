Rails.application.routes.draw do

  # resources :users

  # resources :events do
  #   resources :rsvps do
  #   end
  # end

  resources :users
  resources :events do
    member do
      get 'pending'
      post 'flag'
    end
    resources :rsvps
  end
end

