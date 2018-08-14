Rails.application.routes.draw do
  root "campsites#index"
  resources :campsites, only: [:index, :show] do
    resources :campers, only: [:index]
  end
  resources :campers, only: [:index, :show] do
    resources :supplies, only: [:index]
  end

  namespace :api do # api: the controller is returning a JSON
    namespace :v1 do # v1: version control, version 1
      resources :campers, only: [:index]
    end
  end
end
