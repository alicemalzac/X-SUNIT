Rails.application.routes.draw do
  resources :survivors 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root to: "static_pages#index"

   get '/abducted/:id', to: 'survivors#abducted', as: 'abducted'
   get  'reports', to: 'static_pages#reports'
   get '/abducted/percentage_abducted/:id', to: 'survivors#abducted', as: 'percentage_abducted'
  end
