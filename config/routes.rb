Rails.application.routes.draw do
 
  get '/ingredients', to: 'ingredients#index', as: 'ingredients'
  
end
