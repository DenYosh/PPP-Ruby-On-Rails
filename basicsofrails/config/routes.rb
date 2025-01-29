Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "home/index" => "home#index"
  get "home/getquerystringvalues" => "home#getquerystringvalues"
  get "home/passdatatoviews" => "home#passdatatoviews"
  get "home/showdatetimeinfo" => "home#showdatetimeinfo"
  get "home/conditionalrendering" => "home#conditionalrendering"
  get "home/loopthrougharrays" => "home#loopthrougharrays"

  get "/shoppingcart/index" => "shoppingcart#index"
  get "/shoppingcart/product_list" => "shoppingcart#product_list"
  get "/shoppingcart/:product_id/add_cart" => "shoppingcart#add_cart", as: :add_cart

  get "/shoppingcart/:cart_id/remove_cart" => "shoppingcart#remove_cart", as: :remove_cart










  get "home/LoadUsers" => "home#LoadUsers"
  get "home/LoadUsers2" => "home#LoadUsers2"

  get "home/LoadUserDetails/:id" => "home#LoadUserDetails", as: "LoadUserDetails"
  get "home/ShowUserDetails" => "home#ShowUserDetails"
end
