Casorio::Application.routes.draw do
  resources :messages

  resources :photos

  resources :events do
		resources :gift_lists do
			get 'index/:search' => 'gift_lists#index'
		end
	end

  get "dashboard/index"

  resources :expenses

  #devise_for :admins
  #devise_for :users, :controllers => { :registrations => "registrations" }
  #devise_for :users
	#devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  devise_for :users, :skip => [:sessions, :registrations]
  as :user do
    get 'signin' => 'devise/sessions#new', :as => :new_user_session
    post 'signin' => 'devise/sessions#create', :as => :user_session
    delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  resources :guests

  root :to => "home#index"
	get 'dashboard' => 'dashboard#index', as: "dashboard"
	get "dashboard/gifts/:event_id" => "dashboard#gifts", as: "dashboard_gifts"
	get 'home' => 'home#index', as: "home"
	get "home/gifts/:event_id" => "home#gifts", as: "home_gifts"
	put 'home/update/:gift_list_id' => 'home#update', as: "update_checked_gift_list"



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
