Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  get 'welcome/index'

  resources :books, except: [:show]
  resources :cats, except: [:show]

  namespace :admin do
    resources :espressos, except: [:show]
    resources :dogs, except: [:show]
  end
end
