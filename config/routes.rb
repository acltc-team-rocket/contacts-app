Rails.application.routes.draw do
  get '/contacts', to: 'contacts#index'  
  get '/contacts/:id', to: 'contacts#show'
end
