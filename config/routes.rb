Rails.application.routes.draw do

  get root to: "application#index"

  get '/movies/', :to => 'movies#index'

  get '/movies/:id', to:'movies#show', as: 'movie'

  get '/shows/', :to => 'tv_shows#index'

  get '/shows/:id', to:'tv_shows#show', as: 'show'

  post '/shows/create', to: 'tv_shows#create'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  # get '/movies/gladiator', to:'movies#show_gladiator'

  # get '/movies/matilda', to:'movies#show_matilda'

  # get '/movies/oldboy', to:'movies#show_oldboy'

  # get '/movies/cube', to:'movies#show_cube'

  # get '/shows/seinfeld', to:'tv_shows#show_seinfeld'

  # get '/shows/friends', to:'tv_shows#show_friends'
end
