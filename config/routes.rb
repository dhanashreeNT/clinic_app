ClinicApp::Application.routes.draw do
  namespace :admin do
    resources :workhours
  end


  namespace :admin do
    resources :appointments
  end

  namespace :admin do
    resources :timeofappointments
  end

  namespace :admin do
    resources :services
  end

  namespace :admin do
    resources :pages
  end


  namespace :admin do
    resources :galleries
  end


  namespace :admin do
    resources :doctors
  end


  namespace :admin do
    resources :clinics
  end

  
  match 'admin/dashboards' => 'admin/dashboards#index', :as => :dashboards_index

  devise_for :admins

  match "/admin/appointments/change_status/:id" => "admin/appointments#change_status",    :method=>:post,   :as => :admin_appointment_change_status
  match "/home" => "public/staticpages#home", :as =>"home"
  match "/about" => "public/staticpages#about", :as =>"about"
  match "/gallery" => "public/staticpages#gallery", :as =>"gallery"
  match "/services" => "public/staticpages#services", :as =>"services"
  match "/book_appointment" => "public/staticpages#book_appointment", :as =>"book_appointment"
  match "/contact_us" => "public/staticpages#contact_us", :as =>"contact_us"
  match "/service/:id" => "public/staticpages#service", :as => "service"
  match "/admin/change_password/change" =>   "admin/change_password#change", :method=>:post,  :as => :admin_change_password

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'public/staticpages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
