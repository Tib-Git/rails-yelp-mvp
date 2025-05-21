# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.create!(name: "Le pet qui noie", address: "Pekin", phone_number: "0556000000", category: "chinese")
Restaurant.create!(name: "La bonne humeur", address: "Paris", phone_number: "0142000000", category: "french")

puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Le pet qui noie", address: "Pekin", phone_number: "0556000000", category: "chinese")
puts "Le pet qui noie"
Restaurant.create!(name: "La bonne humeur", address: "Paris", phone_number: "0142000000", category: "french")
puts "La bonne humeur"
Restaurant.create!(name: "Macarena", address: "Bordeaux", phone_number: "Hey Macarena", category: "italian")
puts "Macarena"
Restaurant.create!(name: "Poltròn et Sofa", address: "Rome", phone_number: "0360000000", category: "italian")
puts "Poltròn et Sofa"
Restaurant.create!(name: "Chez pas moi", address: "Bordeaux", phone_number: "0556000001", category: "french")
puts "Chez pas moi"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
