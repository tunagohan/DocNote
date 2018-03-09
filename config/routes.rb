Rails.application.routes.draw do
  resources :articles, path: :note

  # RootPath
  root to: 'articles#index'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
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
end