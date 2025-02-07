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
  get "employees" => "employees#index", as: :employees
  get "employees/new" => "employees#new", as: :new_employee
  get "employees/:id" => "employees#show", as: :employee
  get "employees/edit/:id" => "employees#edit", as: :edit_employee
  get "employees/delete/:id" => "employees#delete_employee", as: :delete_employee

  patch "employees/:id" => "employees#update"
  delete "employees/:id" => "employees#destroy"
  post "employees" => "employees#create"

  resources :users

  resources :singleemployeedelete, only: [ :index ] do
    delete "emp_delete", on: :collection
  end

  resources :bulkdeleteemployees, only: [ :index ] do
    delete "bulk_delete", on: :collection
  end

  resources :bulkupdates, only: [ :index ] do
    patch "bulk_update", on: :collection
  end

  resources :bulkinserts, only: [ :new, :create ]

  resources :offshoreemployees, only: [ :new, :create ]

  get "/locations/states" => "locations#states"
  get "/locations/cities" => "locations#cities"

  resources :employeespaginations, only: [ :index ]

  get "radio_index", to: "allowances#radio_index"
  post "radio_create", to: "allowances#radio_create"

  get "check_box_index", to: "allowances#check_box_index"
  post "check_box_create", to: "allowances#check_box_create"

  get "list_box_index", to: "allowances#list_box_index"
  post "list_box_create", to: "allowances#list_box_create"

  resources :employeefilters, only: [ :index ]
end
