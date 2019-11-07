Rails.application.routes.draw do
  resources :cabs
  resources :riders
  resources :drivers
  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
