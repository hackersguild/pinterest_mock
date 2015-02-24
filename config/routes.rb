Rails.application.routes.draw do
  root 'pins#index'
  get 'pins/increment'
  resources :pins do
    resources :comments
  end
end
