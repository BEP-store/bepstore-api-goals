BEPStore::Goals::Engine.routes.draw do
  get :docs, to: 'docs#find', constraints: ->(request) { request.params.key? :ids }
  resources :docs, except: [:new, :edit], format: :json

  get :sheets, to: 'sheets#find', constraints: ->(request) { request.params.key? :ids }
  resources :sheets, except: [:new, :edit], format: :json

  get :presentations, to: 'presentations#find', constraints: ->(request) { request.params.key? :ids }
  resources :presentations, except: [:new, :edit], format: :json

  get :forms, to: 'forms#find', constraints: ->(request) { request.params.key? :ids }
  resources :forms, except: [:new, :edit], format: :json

  get :hangouts, to: 'hangouts#find', constraints: ->(request) { request.params.key? :ids }
  resources :hangouts, except: [:new, :edit], format: :json
end
