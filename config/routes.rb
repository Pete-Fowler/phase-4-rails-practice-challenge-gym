Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :gyms, only: %i[show destroy]
  resources :client, only: [:show]
end
