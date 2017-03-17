Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'usr_permissions/index'

  root 'usr_roles#home', as: 'home'

  resources :usr_roles
  resources :usr_contacts

end
