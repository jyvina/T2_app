Rails.application.routes.draw do

  
  
  #root 'static_pages#home'

  resources :users
  resources :sessions, only:[:create]
  delete '/logout',  to: 'sessions#destroy'
  root 'sessions#new'
  get 'static_pages/reservation'
  get 'static_pages/client'
  get 'static_pages/search'
  get 'static_pages/contact'
  get 'static_pages/creater_date'
  resources :posts do
    resources :comments, only:[:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
