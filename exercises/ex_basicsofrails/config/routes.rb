Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  get "home/index" => "home#index"
  get "home/getquerystringvalues" => "home#getQueryStringValues"
  get "home/passdatatoviews" => "home#passDataToViews"
  get "home/showdatetimeinfo" => "home#showDateTimeInfo"
  get "home/conditionalrendering" => "home#conditionalRendering"
  get "home/loopingthrougharray" => "home#loopThroughArrays"

  get "home/loadusers" => "home#LoadUsers"
  get "home/loadusers2" => "home#LoadUsers2"

  get "home/loaduserdetails/:id" => "home#LoadUsersDetails", as: :LoadUserDetails
  get "home/showuserdetails" => "home#ShowUserDetails"

  get "shoppingcart/index" => "shoppingcart#index"
  get "/shoppingcart/product_list" => "shoppingcart#product_list"
  get "/shoppingcart/:product_id/add_cart" => "shoppingcart#add_cart", as: :add_cart
  get "/shoppingcart/:cart_id/remove_cart" => "shoppingcart#remove_cart", as: :remove_cart
end
