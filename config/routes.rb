Rails.application.routes.draw do
  resources :survivors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root to: "static_pages#index"

   get 'flag_survivor', to: 'static_pages#flag_survivor'
   get 'reports', to: 'static_pages#reports'
   get 'survivor_registration', to: 'static_pages#survivor_registration'
   
end
