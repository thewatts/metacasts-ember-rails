Beerdb::Application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :beers
      resources :regions do
        resources :beers
        resources :breweries
        resources :countries
        resources :cities
      end
      resources :countries do
        resources :beers
        resources :breweries
        resources :cities
      end
      resources :cities do
        resources :beers
        resources :breweries
      end
      resources :breweries do
        resources :beers
      end
    end
  end

  match '*path', to: 'home#index'
  root to: "home#index"
end
