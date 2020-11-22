Rails.application.routes.draw do
  devise_for :users
  resources :frendies
  #get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'frendies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
