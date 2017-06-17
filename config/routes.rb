Rails.application.routes.draw do

  root 'prueba#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get 'agregar_sitio'=>'prueba#agregar_sitio'
  resources :sitios

end
