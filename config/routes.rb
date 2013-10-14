Wheresmybeer::Application.routes.draw do

  resources :products
  match 'search' => 'products#search', :via => [:post]

  match 'stores/:id' => 'stores#show', :via => [:get]

  namespace :api, :defaults => {:format => :json} do
    resources :products
    match 'search' => 'products#search', :via => [:get]
    match 'stores/:id' => 'stores#show', :via => [:get]
  end


  root :to => 'home#index'
end
