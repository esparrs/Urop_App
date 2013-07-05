UropApp::Application.routes.draw do

  devise_for :users, :path_names =>{ :sign_up => 'signup', :sign_in => 'signin'}
  resources :users # ensures that our Rails application responds to the RESTful URLs according to Rails Tutorial

  root to: 'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',    to: 'static_pages#about',    via: 'get'
  match '/contact',    to: 'static_pages#contact',    via: 'get'
  # match '/users/signup', to: 'devise/registrations#new', via: 'get' # syntax may be necessary regarding paths
  # match '/users/signin', to: 'devise/sessions#new', via: 'get'
  # match '/users_signup',    to: 'users#signup',    via: 'get' -> going to get rid of

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
