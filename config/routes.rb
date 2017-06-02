Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, except: [:edit, :update, :destroy]
  resources :mountings, except: [:edit, :update, :destroy]
end
