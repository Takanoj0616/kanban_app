Rails.application.routes.draw do

  devise_for :users
  root 'top#index'
  resources :list, only: %i(new create edit update destroy) do
     resources :card, except: %i(index)
  end
  get 'inquiries/new'
  post 'inquiries/confirm'
  post 'inquiries/thanks'

end
