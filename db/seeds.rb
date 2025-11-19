# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."

restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "01 42 00 00 00", category: "french" },
  { name: "Sushi Shop", address: "Tokyo", phone_number: "+81 3 1234 5678", category: "japanese" },
  { name: "Pizza Roma", address: "Rome", phone_number: "+39 06 1111 2222", category: "italian" },
  { name: "Pekin Express", address: "Beijing", phone_number: "+86 10 3333 4444", category: "chinese" },
  { name: "Frite Corner", address: "Bruxelles", phone_number: "+32 2 555 6666", category: "belgian" }
]

restaurants.each do |attrs|
  restaurant = Restaurant.create!(attrs)
  puts "Created #{restaurant.name}"
end

puts "Finished! Created #{Restaurant.count} restaurants."
