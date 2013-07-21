RailsDemo::Application.routes.draw do
  
  root "users#index"

  resources :users, :only => [:show, :create, :new] do
    collection do
      post 'login'
      post 'logout'      
    end
  end
end
