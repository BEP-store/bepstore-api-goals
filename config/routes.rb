BEPStore::Goals::Engine.routes.draw do
  get :goals,
      to: 'goals#find',
      constraints: ->(request) { request.params.key? :ids }
  resources :goals, format: :json
end
