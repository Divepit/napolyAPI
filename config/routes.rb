Rails.application.routes.draw do
  resources :buttons
  resources :links
  resources :infos
  resources :users
  resources :subjects

  namespace :api do
    namespace :v1 do
      resources :links
      resources :types
      resources :subjects
      resources :semesters
      resources :fields
      resources :infos
      resources :buttons
      resources :users
    end
  end

  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
end
