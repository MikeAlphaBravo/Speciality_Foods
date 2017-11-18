Rails.application.routes.draw do
  resources :products do
    resources :reviews
  end
  root 'homepage#index'
end
