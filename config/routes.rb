Rails.application.routes.draw do
  resources :types
  resources :fields
  resources :subjects
  resources :semesters
  namespace :api do
    namespace :v1 do
      resources :links
      resources :types
      resources :subjects
    end
  end

  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
end
