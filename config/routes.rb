Rails.application.routes.draw do
  get 'currencies/new'
  get 'currencies/create'
  get 'currencies/edit'
  get 'currencies/update'
  get 'currencies/destroy'
  get 'currencies/show'
  get 'currencies/index'
  resources :filmes

  resources :testes do
    collection { post :import }
  end

  root to: 'testes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
