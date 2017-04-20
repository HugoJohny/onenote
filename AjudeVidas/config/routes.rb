Rails.application.routes.draw do
  devise_for :users
  resources :interesses
  resources :produtos
  resources :pessoas

  root to: "produtos#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 mount PostgresqlLoStreamer::Engine => '/produto_foto' 
end
