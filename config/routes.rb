Rails.application.routes.draw do
  # resources :lions
  resources :lions do
    resources :comments
  end
  root "lions#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
