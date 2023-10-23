Rails.application.routes.draw do
  root 'sonant#index'
  get '/about', to: 'sonant#about'
  get '/service', to: 'sonant#service'
  get '/jobs', to: 'sonant#job'
  #get 'sonant/index'
  #get 'sonant/about'
  #get 'sonant/service'
  #get 'sonant/job'
  #get'contacts/create'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  resources "userapplies", only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
