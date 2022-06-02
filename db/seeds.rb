puts "Cleaning database"

Booking.destroy_all
Chef.destroy_all
User.destroy_all

puts "Creating users..."
theresa = User.create!(email: "theresa@test.com", password: "123456", first_name: "theresa", last_name: "adeyemi", address:" 202 Kensington Church Street")
theresa.photo.attach(io: File.open('app/assets/images/theresa.jpg'), filename: 'theresa.jpg', content_type: 'image/jpg')
puts "Creating users..."
jette = User.create!(email: "jette@test.com", password: "123456", first_name: "jette", last_name: "handshumacher", address:" somewhere in london")
jette.photo.attach(io: File.open('app/assets/images/jette.jpg'), filename: 'jette.jpg', content_type: 'image/jpg')
puts "Creating users..."
ziggy1192 = User.create!(email: "ziggy@test.com", password: "123456", first_name: "dziugas", last_name: "bartkevicius", address:" 11 Granham road, London")
ziggy1192.photo.attach(io: File.open('app/assets/images/ziggy.jpg'), filename: 'ziggy.jpg', content_type: 'image/jpg')

puts "Creating users..."
User.create!(email: "demo@mail.com", password: "123456", first_name: "JettaZigg", last_name: "HandBart", address:"London,Germany")

puts "Creating chefs..."
Chef.create!(cuisine: "French", price: 100, profile: "I have worked in Michelin starred kitchens, book me", img_url: "theresa.jpg", user: theresa)

puts "Creating chefs..."
Chef.create!(cuisine: "Indian", price: 5.99, profile: "master of indian style street foods", img_url: "jette.jpg", user: jette)

puts "Creating chefs..."
Chef.create!(cuisine: "American", price: 39.99, profile: "eat more often than cook, but ill make it very special just for you if you hire me!", img_url: "ziggy.jpg", user: ziggy1192)
