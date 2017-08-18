Rails.application.routes.draw do
  root 'patients#new'

  get '/signup', to: 'patients#new'
  get '/confirmation', to: 'patients#confirmation'
  post '/signup', to: 'patients#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
