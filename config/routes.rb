Rails.application.routes.draw do
  root to: 'items#index'
  resources :items, except: [:edit, :update, :destroy] do
    get 'items_mountings', on: :member
  end
  resources :mountings, except: [:edit, :update, :destroy]
end
