Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'pages#home'

  resources :lists do # primary instance, has many movies and bookmarks
    resources :bookmarks, only: [:new, :create] # we need only
  end

  resources :bookmarks, only: :destroy
end

