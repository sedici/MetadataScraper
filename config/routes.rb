Rails.application.routes.draw do
  devise_for :users
  root 'scraper#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :fields
  resources :scrape_methods

  get '/scrape_methods/new_using_meta_tag' => 'scrape_methods#new_using_meta_tag'
end
