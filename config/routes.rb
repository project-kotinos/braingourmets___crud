Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'

  resources :books, except: [:show]
  resources :cats, except: [:show]

  namespace :admin do
    resources :espressos, except: [:show]
    resources :dogs, except: [:show]
  end
end
