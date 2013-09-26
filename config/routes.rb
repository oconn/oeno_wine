Oeno::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  
  resources :posts

  resources :contact, :only => [:new, :create]

  root 'static_pages#home'

  match '/about',  to: 'static_pages#about',  via: 'get'
  match '/how_its_done',  to: 'static_pages#how',  via: 'get'
  match '/price_guide',  to: 'static_pages#price',  via: 'get'
  match '/weddings',  to: 'static_pages#weddings',  via: 'get'
  match '/faq',  to: 'static_pages#faq',  via: 'get'
  match '/labels',  to: 'static_pages#labels',  via: 'get'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
