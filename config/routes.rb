Bloccit::Application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
      resources :comments, only: [:create]
  end

  devise_for :users

  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end