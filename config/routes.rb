Rails.application.routes.draw do

  devise_for :users
  root 'top#index'
  resources :list, only: %i(new create edit update destroy) do
     resources :card, except: %i(index)
  end
  get 'inquiries/new'
  get 'inquiries/confirm'
  get 'inquiries/thanks'
  
end
