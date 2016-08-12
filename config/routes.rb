Rails.application.routes.draw do
  root "cocktails#index"

  resources :cocktails, only: [:destroy, :index, :show, :new, :create] do
    resources :doses, only: [:new, :show, :create, :destroy]
  end

  resources :ingredients, only: [:index, :new, :destroy, :create]

end
