Bloccit::Application.routes.draw do

  get "comments/create"

  devise_for :users

  resources :topics do
    resources :posts, except: [:index]
      resources :comments, only: [:create]
  end


  match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'
end