Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'

  devise_for :admins, controllers: {
          sessions: 'admins/sessions',
          registrations: 'admins/registrations'
  }

  get '/' => 'publishers#index'
  resources :publishers
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
