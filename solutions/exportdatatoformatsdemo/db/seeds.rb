# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
unless Belfastemployee.blank?
  Belfastemployee.create!(firstname: "Connors",lastname:"McGregor",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Chad",lastname:"Mendis",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Nate",lastname:"Diaz",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Nick",lastname:"Diaz",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Anthony",lastname:"Joshua",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Michael",lastname:"Johnson",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Israel",lastname:"Adesanya",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Michael",lastname:"Chang",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Novak",lastname:"Djokovic",salary:5000,notes:'Notorious Guy!')

  Belfastemployee.create!(firstname: "Pete",lastname:"Samprass",salary:5000,notes:'Notorious Guy!')
  end
