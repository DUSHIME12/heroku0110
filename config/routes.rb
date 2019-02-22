Rails.application.routes.draw do
  get 'cinemas/index'

  get 'cinemas/new'

  get 'cinemas/create'

  get 'cinemas/destroy'
  resources :cinemas, only: [:index, :new, :create, :destroy]   
  root "cinemas#index"  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
