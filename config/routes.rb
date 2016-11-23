Rails.application.routes.draw do
  resources :team_members
  resources :personnel_categories
  resources :personnels
  resources :in_categories
  resources :fixed_assets
  resources :vendors
  resources :invoices
  resources :credit_invoices
  resources :expense_sub_types
  resources :inventories
  resources :tunnel_operations
  resources :mining_operations
  resources :expenses
  resources :mines
  resources :miners
  resources :roles
  resources :dashboard
  resources :teams
  resources :attendances
  resources :items
  resources :check_attendances
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  devise_for :users
  # You can have the root of your site routed with "root"
  devise_scope :user do
    root :to => 'devise/sessions#new'
  end

  resources :users do
    resources :mines
  end

  resources :mines do
    resources :dashboard
    resources :miners
  end

  resources :tunnel do
    resources :tunnel_operations
  end

  post "mine/session", :to=>"mines#save_mine_session"
  
  post "pusher/auth"

  delete 'expense/destroy_multiple', :to  => 'expenses#destroy_multiple'
  post 'attendance/generate_attendance', :to  => 'attendances#generate_attendance'

  mount Plutus::Engine => "/plutus", :as => "plutus"
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
