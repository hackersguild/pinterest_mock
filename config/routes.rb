Rails.application.routes.draw do
  root 'pins#index'
  get 'pins/index'
  get 'pins/increment'
  post 'pins/create'
end
