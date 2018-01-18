Rails.application.routes.draw do
  resources :proveedor_servicios
  resources :pagos_publicidads
  resources :pagos_promocions
  resources :clientes
  resources :promocion_eventos
  resources :publicidads
  resources :encuesta
  resources :subcategoria
  resources :categoria
  resources :localidades
  resources :municipios
  resources :provincia
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
