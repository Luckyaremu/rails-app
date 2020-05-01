Rails.application.routes.draw do
  resources :cars
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cars#index'
end
