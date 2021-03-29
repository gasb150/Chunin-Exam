Rails.application.routes.draw do
  devise_for :users
  resources :urls_shorters
  get '/urls_shorters/:short', to: 'links#show', as: :short
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'urls_shorters#index'
end
