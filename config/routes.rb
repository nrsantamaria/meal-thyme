Rails.application.routes.draw do

  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  resources :users
  resources :recipes
  resources :home do
    collection do
      get :about
      get :faqs
    end
  end
  root :to => 'home#index'
end
