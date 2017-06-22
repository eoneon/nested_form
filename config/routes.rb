Rails.application.routes.draw do
  root to: 'items#index'
<<<<<<< HEAD
  resources :items, except: [:edit, :update, :destroy]
  resources :mountings, except: [:edit, :update, :destroy]
=======
  resources :items
  resources :descriptions, only: [:index, :create]
>>>>>>> hmt_types
end
