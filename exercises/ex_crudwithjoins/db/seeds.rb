# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


unless Department.blank?
  Department.create!(name: "HR")
  Department.create!(name: "IT")
  Department.create!(name: "Finance")
  Department.create!(name: "Shipping")
end

unless Country.blank?
  Country.create!(name: "India")
  Country.create!(name: "USA")
  Country.create!(name: "UK")
  Country.create!(name: "Australia")
  Country.create!(name: "Belgium")
  Country.create!(name: "Netherlands")
end
