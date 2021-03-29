Rails.application.routes.draw do
  resources :urls_shorters
  get '/urls_shorters/:short', to: 'links#show', as: :short
  root 'urls_shorters#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
