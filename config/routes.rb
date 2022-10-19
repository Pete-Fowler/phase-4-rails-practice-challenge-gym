Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :gyms, only: %i[show create destroy]
  resources :clients, only: [:show]
end
