Rails.application.routes.draw do
  root 'patients#new'

  get 'patients/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
