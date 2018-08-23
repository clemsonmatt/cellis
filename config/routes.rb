Rails.application.routes.draw do
    resources :sessions
    resources :users

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'default#index'

    # default pages
    get '/about', action: :about, controller: 'default'
    get '/contact', action: :contact, controller: 'default'

    # profile
    get '/profile', action: :index, controller: 'profiles'
    get '/profile/edit', action: :edit, controller: 'profiles'
    patch '/profile/update', action: :update, controller: 'profiles'

    # admin
    namespace :manage do
        resources :users
    end

    # sessions
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'
end
