Rails.application.routes.draw do

  # resources :users

  # resources :events do
  #   resources :rsvps do
  #   end
  # end

  resources :users, :events, :rsvps

end
