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
  Department.create!(name: "Networking")
  Department.create!(name: "Dispatch")
  Department.create!(name: "Marketting")
  Department.create!(name: "Shipping")
end

unless Country.blank?
  Country.create!(name: "UK")
  Country.create!(name: "Spain")
  Country.create!(name: "Brazil")
  Country.create!(name: "Italy")
end

unless State.blank?
  State.create!(name: "Telangana",country_id: 1)
  State.create!(name: "Andhra Pradesh",country_id: 1)
  State.create!(name: "Chennai",country_id: 1)
  State.create!(name: "Karnataka",country_id: 1)

  State.create!(name: "California",country_id: 2)
  State.create!(name: "Alaska",country_id: 2)
  State.create!(name: "Texas",country_id: 2)
  State.create!(name: "Arizona",country_id: 2)
end

unless City.blank?
  City.create!(name: "Hyderabad",state_id: 1)
  City.create!(name: "Secunderabad",state_id: 1)
  City.create!(name: "Cyberabad",state_id: 1)
  City.create!(name: "Warangal",state_id: 1)

  City.create!(name: "Vizag",state_id: 2)
  City.create!(name: "Vijayawada",state_id: 2)
  City.create!(name: "Khammam",state_id: 2)
  City.create!(name: "Kakinada",state_id: 2)

  City.create!(name: "Manali",state_id: 3)
  City.create!(name: "George Town",state_id: 3)
  City.create!(name: "Red Hills",state_id: 3)
  City.create!(name: "Basin Bridge",state_id: 3)

  City.create!(name: "Bengaluru",state_id: 4)
  City.create!(name: "Mangalore",state_id: 4)
  City.create!(name: "Mysore",state_id: 4)
  City.create!(name: "Hampi",state_id: 4)

  City.create!(name: "Beverly Hills",state_id: 5)
  City.create!(name: "Blue Lake",state_id: 5)
  City.create!(name: "Bradbury",state_id: 5)

  City.create!(name: "Fairbanks",state_id: 6)
  City.create!(name: "Kodiak",state_id: 6)
  City.create!(name: "Haines",state_id: 6)

  City.create!(name: "Dallas",state_id: 7)
  City.create!(name: "Austin",state_id: 7)
  City.create!(name: "Houston",state_id: 7)

  City.create!(name: "Phoenix",state_id: 8)
#   City.create!(name: "Page",state_id: 8)
#   City.create!(name: "Mesa",state_id: 8)
# end

unless Allowancetype.blank?
  Allowancetype.create!(name: "HRA", percentage: 10)
  Allowancetype.create!(name: "CA", percentage: 15)
  Allowancetype.create!(name: "MA", percentage: 20)
  Allowancetype.create!(name: "PA", percentage: 25)
  Allowancetype.create!(name: "DA", percentage: 30)
  Allowancetype.create!(name: "EPF", percentage: 35)
  Allowancetype.create!(name: "FA", percentage: 40)
end
