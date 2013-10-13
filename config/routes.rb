Wheresmybeer::Application.routes.draw do

  resources :products
  match 'search' => 'products#search', :via => [:post]

  match 'stores/:id' => 'stores#show', :via => [:get]

  root :to => 'home#index'
end
