Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
mount Attachinary::Engine => "/attachinary"
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :create, :new ]
  end
  resources :doses, only: [:destroy, :create, :new]
  root "cocktails#index"
end


