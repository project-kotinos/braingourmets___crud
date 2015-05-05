Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'

  resources :books, :cats, except: [:show]

  namespace :admin do
    resources :espressos, :dogs, except: [:show]
  end
end
