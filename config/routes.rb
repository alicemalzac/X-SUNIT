Rails.application.routes.draw do
  resources :survivors 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root to: "static_pages#index"

   get '/abducted/:id', to: 'survivors#abducted', as: 'abducted'

end
