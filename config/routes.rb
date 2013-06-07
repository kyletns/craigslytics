Craigslytics::Application.routes.draw do
  resources :listings
  resources :listing_comparisons
  resources :analyses do
    member do
      match :poll
    end
  end

  root :to => 'analyses#home'
  mount Resque::Server, :at => "/resque"
end
