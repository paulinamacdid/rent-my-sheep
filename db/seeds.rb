# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning the database first..."
Booking.destroy_all
Sheep.destroy_all
User.destroy_all

puts "creating users..."

gabriela = User.create(email: "gabbyb@gmail.com", password: "tasdj583!", first_name: "Gabriela", last_name: "Propodopolis")
pamela = User.create(email: "pamela@gmail.com", password: "skdfjsdfi2!", first_name: "Pamela", last_name: "Gordon")
david = User.create(email: "daveg@gmail.com", password: "tsa8as3!", first_name: "David", last_name: "Johnson")
george = User.create(email: "georgyporgy@gmail.com", password: "asdisdf3!", first_name: "George", last_name: "Walter")

puts "creating sheep...."

Sheep.create(name: "Shaun The Sheep", image_url: "https://media.timeout.com/images/102765296/1372/772/image.webp", location: "Hollywood", description: "Shaun made his
  screen debut in the Wallace and Gromit film A Close Shave back in 1995. Fast-forward to now and Shaun has become
  a global superstar with 5 million followers on Facebook! There is even a Shaun-themed café in Japan. If you want
  to be close to a Hollywood superstar Shaun is your sheep!", weight: "140kg", breed: "Aberblack", day_rate: "450.0", rating: "10", user: gabriela)

Sheep.create(name: "Baa Baa Black Sheep", image_url: "https://www.nativebreed.org/wp-content/uploads/2021/06/Balwen-Welsh.jpeg", location: "Cardiff", description: "Baa Baa is
  named after the medieval English great or old Custom wool tax of 1275, which survived until the fifteenth century. Baa Baa
  is a classic sheep we all know and love and he loves it when people sing Baa Baa Black Sheep",
  weight: "90kg", breed: "Balwen Welsh Mountain", day_rate: "153.50", rating: "7", user: pamela)

Sheep.create(name: "Dolly", image_url: "https://cdn.mos.cms.futurecdn.net/QHPeCe49wKHdLjb8P2NdxF.jpg", location: "London", description: "Dolly the sheep was the first cloned mammal
  ever to be created from an adult cell. Affectionately named after country music legend Dolly Parton,
  Dolly caused excitement and controversy among both scientists and the public.  If you fancy meeting
  the ultimate contraversial sheep Dolly is the one but not the only", weight:
  "60kg", breed: "Finn Dorset sheep", day_rate: "287.0", rating: "8", user: david)

Sheep.create(name: "Daisy", image_url: "https://www.berrichonsociety.com/wp-content/uploads/2022/03/Frontsolo-1500x630.jpg", location: "Paris", description: "Daisy is a fun-lovin' sheep who loves
  to give love! She is great for cuddles and enjoys having her wool sheered for the winter to make way for better
  dance moves at the summer sheep raves!", weight: "80kg", breed: "Berrichon du Cher", day_rate: "300.0", rating:
  "4", user: george)
