Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  resources :home
  root :to => 'home#index'
end
