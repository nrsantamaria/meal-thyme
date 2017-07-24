Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
    }
  resources :home
  root :to => 'home#index'
  resources :users
end
