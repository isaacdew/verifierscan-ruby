Rails.application.routes.draw do
  resources :threat_matches
  resources :domains
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
