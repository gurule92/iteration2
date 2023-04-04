Rails.application.routes.draw do
  resources :items
  root "tier_lists#index"
  resources :tier_items
  resources :tier_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
