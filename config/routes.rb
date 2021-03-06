Rails.application.routes.draw do

  resources :articles, path: :note

  # RootPath

  root to: 'top#index', as: :top_root


  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }

  devise_scope :user do
    get "signin", :to => "users/sessions#new"
    get "signout", :to => "users/sessions#destroy"
    get "signup", :to => "users/registrations#new"
  end

  resources :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  match "*path" => "application#handle_404", via: :all

end