Rails.application.routes.draw do
  # root 'addresses#index'
  root 'subs#index'
  # resources :controllerName
  # custom route, http verb '/whatever', to: 'controller#action'
  # root 'controller#action' where to go on initial landing
  # get '/subs', to: 'subs#index'
  # get '/sub', to: 'subs#show'
  # get '/subs/:id', to: 'subs#edit'
  # resources :addresses
  resources :subs do
    resources :topics 
  end
  resources :topics do
    resources :comments
  end
  # resources :comments do
  #   resources :likes
  # end
end















