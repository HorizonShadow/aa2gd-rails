Rails.application.routes.draw do
  get 'home', controller: 'home', action: 'index'
  get 'authenticate', controller: 'authenticate', action: 'index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root to: "home#index"
end
