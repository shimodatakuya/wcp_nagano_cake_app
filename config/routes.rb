Rails.application.routes.draw do
  devise_for :admins
  # devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    root to: 'homes#top'
    resources :items
    resources :customers, only:[:edit, :index, :show, :update]
    resources :genres, only:[:edit, :index, :create, :update]
    resources :order_status, only:[:show, :update]
    resources :production_status, only:[:update]
    
    
    
  end
end
