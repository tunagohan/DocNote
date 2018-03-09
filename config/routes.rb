Rails.application.routes.draw do
  resources :articles, path: :note

  # RootPath
  root to: 'articles#index'

  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get    'login'         => 'devise/sessions#new'
    get    'signup'        => 'devise_invitable/registrations#new'
  end

  resources :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end