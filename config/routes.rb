Rails.application.routes.draw do

  get 'users/show/:id', to: 'users#show', as: 'user'

  root to: 'page#home'
  post 'item/collect', to: 'item#collect'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
