# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user_details = [
    { name: "Yoshi Cooremans", profile: "Yoshi profile" },
    { name: "user2", profile: "user2 profile" },
    { name: "user3", profile: "user3 profile" },
    { name: "user4", profile: "user4 profile" },
    { name: "user5", profile: "user5 profile" },
    { name: "user6", profile: "user6 profile" },
    { name: "user7", profile: "user7 profile" },
    { name: "user8", profile: "user8 profile" },
    { name: "user9", profile: "user9 profile" },
    { name: "user10", profile: "user10 profile" }
]

unless UserDetail.blank?
  user_details.each do |user|
    UserDetail.create!(user)
  end
end

employees = [
  { first_name: 'Yoshi Emp', last_name: "Cooremans", email: "yoshi@gmail.com" },
  { first_name: 'employee2', last_name: "employee2", email: "employee2@gmail.com" },
  { first_name: 'employee3', last_name: "employee3", email: "employee3@gmail.com" },
  { first_name: 'employee4', last_name: "employee4", email: "employee4@gmail.com" },
  { first_name: 'employee5', last_name: "employee5", email: "employee5@gmail.com" },
  { first_name: 'employee6', last_name: "employee6", email: "employee6@gmail.com" },
  { first_name: 'employee7', last_name: "employee7", email: "employee7@gmail.com" },
  { first_name: 'employee8', last_name: "employee8", email: "employee8@gmail.com" },
  { first_name: 'employee9', last_name: "employee9", email: "employee9@gmail.com" },
  { first_name: 'employee10', last_name: "employee10", email: "employee10@gmail.com" }
]

unless Employee.blank?
  employees.each do |employee|
    Employee.create!(employee)
  end
end
