Wheresmybeer::Application.routes.draw do

  resources :products
  match 'search' => 'products#search', :via => [:post]

  root :to => 'home#index'
end
