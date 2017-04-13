Rails.application.routes.draw do

  #resources :students, only: [:index, :show, :new, :create]
  #resources :songs, only: [:index, :show, :new, :create]
  resources :songs

  #  get "/songs", to: "songs#index"
  #  get "/songs/new", to: "songs#new", as: "new_song"
  #  post "/songs", to: "songs#create"
  #  get "/songs/:id", to: "songs#show", as: "song"
  #  get "/songs/:id/edit", to: "songs#edit", as: "edit_song"
  #  patch "/songs/:id", to: "songs#update"
  #  delete "/songs/:id", to: "songs#destroy", as: "delete_song"


  #  get "/school_classes", to: "school_classes#index"
  #  get "/school_classes/new", to: "school_classes#new", as: "new_school_class"
  #  post "/school_classes", to: "school_classes#create"
  #  get "/school_classes/:id", to: "school_classes#show", as: "school_class"
  #  get "/school_classes/:id/edit", to: "school_classes#edit", as: "edit_school_class"
  #  patch "/school_classes/:id", to: "school_classes#update"



  # resources :posts, only: [:index, :show, :new, :create]
  # get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  # put 'posts/:id', to: 'posts#update'


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
end
