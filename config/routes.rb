Rails.application.routes.draw do
 
  get '/ingredients', to: 'ingredients#index', as: 'ingredients'
  get '/recipes/:id', to: 'recipes#show', as: 'recipe'
end
