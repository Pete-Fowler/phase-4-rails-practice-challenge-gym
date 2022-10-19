Rails.application.routes.draw do
  resources :memberships, only: %i[create show destroy]

  resources :client, only: [:show]
end
