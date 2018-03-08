Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles, path: :note

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
