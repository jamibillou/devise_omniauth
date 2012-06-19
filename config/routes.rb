DeviseOmniauth::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}

  resources :services, :only => [:index, :create, :destroy]

  root :to => 'pages#index'
end
