Rails.application.routes.draw do
  resources :filmes

  resources :testes do
    collection { post :import }
  end

  root to: 'testes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
