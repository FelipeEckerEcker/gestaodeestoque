Rails.application.routes.draw do
  resources :enderecos
  resources :estados
  resources :cidades
  resources :movimentode_estoques
  resources :operacaos
  resources :produtos
  resources :unidades
  resources :grupode_produtos
  resources :pessoas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
