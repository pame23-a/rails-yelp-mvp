# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

Restaurant.create(
  name: "Mr.Shao",
  address: "Av. La Molina",
  phone_number: " +001 511 4562",
  category: "chinese"
)

Restaurant.create(
  name: "Trattoria El Bambino",
  address: "Barranco 45",
  phone_number: " +001 341 4062",
  category: "italian"
)

Restaurant.create(
  name: "Katana",
  address: "Av. Javier Prado Este 865",
  phone_number: " +001 231 4575",
  category: "japanese"
)

Restaurant.create(
  name: "Chalet Belga",
  address: "Ovalo Higuereta",
  phone_number: " +001 411 4462",
  category: "belgian"
)

Restaurant.create(
  name: "Emile Bistrot",
  address: "Pueblo libre",
  phone_number: " +001 611 4535",
  category: "french"
)
