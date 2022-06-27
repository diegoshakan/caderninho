Rails.application.routes.draw do
  get 'pages/home'
  root "pages#home"

  resources :receivables
  resources :payments
  devise_for :users

end
