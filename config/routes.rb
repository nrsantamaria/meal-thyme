Rails.application.routes.draw do

  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  resources :users do
    collection do
      get :details
    end
  end

  resources :recipes

  resources :meals do
    collection do
      get :day_calendar
      get :week_calendar
      get :month_calendar
    end
  end

  resources :home do
    collection do
      get :about
      get :faqs
    end
  end

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  root :to => 'home#index'
end
