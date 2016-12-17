Rails.application.routes.draw do
  resources :doctors
  resources :acutes
  resources :chronics
  resources :patients
  root 'welcome#index'
  get "/doctors/:id/plist", to: "doctors#plist", as: "plist"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
