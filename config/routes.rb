Rails.application.routes.draw do

  

  root 'static_pages#home'
  
  resources :posts do
    resources :comments, only:[:create, :destroy]
  end
  get 'static_pages/contact'
  get 'static_pages/creater_date'
  
  resources :users
  resources :sessions, only:[:new, :create, :destroy]
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
