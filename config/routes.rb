Rails.application.routes.draw do
  resources :articles, path: :note

  # RootPath
  root to: 'articles#index'

  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
    get    'login'         => 'devise/sessions#new'
    delete 'logout'        => 'devise/sessions#destroy'
    get    'signup'        => 'devise_invitable/registrations#new'
    get    'useredit'      => 'devise_invitable/registrations#edit'
    get    'password'      => 'devise/passwords#new'
  end

  resources :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end