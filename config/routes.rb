Rails.application.routes.draw do
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cars#index'
  resources :cars
end
