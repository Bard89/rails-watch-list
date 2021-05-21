Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'pages#home'

  resources :lists, except: [:edit, :update] do # primary instance, has many movies and bookmarks # also only possible
    resources :bookmarks, only: [:new, :create] # we need only this
  end

  resources :bookmarks, only: :destroy
end
