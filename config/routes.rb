Rails.application.routes.draw do

  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  resources :users
  resources :recipes
  resources :meals
  resources :home do
    collection do
      get :about
      get :faqs
      get :contact
    end
  end
  root :to => 'home#index'
end
