Rails.application.routes.draw do
  root "campsites#index"
  resources :campsites, only: [:index, :show] do
    resources :campers, only: [:index]
  end
  resources :campers, only: [:index, :show] do
    resources :supplies, only: [:index]
  end
end
