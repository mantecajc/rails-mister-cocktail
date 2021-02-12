Rails.application.routes.draw do
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:create]
  end

  resources :doses, only: [:destroy]
end
