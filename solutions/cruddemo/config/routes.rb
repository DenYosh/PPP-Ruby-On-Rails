Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "employees" => "employees#index", as: "employees"
  get "employees/new" => "employees#new", as: "employee_new"
  get "employees/edit/:id" => "employees#edit", as: "edit_employee"
  get "employees/:id" => "employees#show", as: "employee"
  get "delete_employee/:id" => "employees#delete_employee", as: "delete_employee"


  patch "employees/:id" => "employees#update"
  delete "employees/:id" => "employees#destroy"
  post "employees" => "employees#create", as: "employee_create"
end
