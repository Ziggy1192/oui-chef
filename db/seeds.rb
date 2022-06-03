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
theresa = Chef.create!(speciality: "Very good at super fancy dishes, but portion sizes are extremely small.", vegan: true, cuisine: "French, German, Spanish", price: 100, profile: "I'm extremely passionat about food and arts. Every meal I create is a masterpiece! in my 59 years of experience I earned 43 Mischellin stars and still counting. HIRE MEEEE!!!! ", img_url: "theresa.jpg", user: theresa)
theresa.photos.attach(io: File.open('app/assets/images/food1.jpg'), filename: 'food1.jpg', content_type: 'image/jpg')
theresa.photos.attach(io: File.open('app/assets/images/food2.jpg'), filename: 'food2.jpg', content_type: 'image/jpg')
theresa.photos.attach(io: File.open('app/assets/images/food3.jpg'), filename: 'food3.jpg', content_type: 'image/jpg')

puts "Creating chefs..."
jette = Chef.create!(speciality: "Can recreate just about any Indian street food around the world!", dessert: true, meat: true, cuisine: "Indian, Pakistani, Bengal", price: 5.99, profile: "I cooked all around the world, tried every single food out there and I'm capable of recreating just about anything I try. Home cook at heart I will serve you street food style meals youve never had before.", img_url: "jette.jpg", user: jette)
jette.photos.attach(io: File.open('app/assets/images/food4.jpg'), filename: 'food4.jpg', content_type: 'image/jpg')
jette.photos.attach(io: File.open('app/assets/images/food5.jpg'), filename: 'food5.jpg', content_type: 'image/jpg')
jette.photos.attach(io: File.open('app/assets/images/food6.jpg'), filename: 'food6.jpg', content_type: 'image/jpg')

puts "Creating chefs..."
ziggy1192 = Chef.create!(speciality: "very good at making BBQ, and even better at eating it.", fish: true, vegetarian: true, cuisine: "American, Italian, Jamaican", price: 39.99, profile: "I eat more often than cook, but I'll make it very special just for you if you hire me! I have worked in many different places throughut my years as a PRO chef, and this venture on this beautiful site OUI Chefs is my next into the world of Cheffin'", img_url: "ziggy.jpg", user: ziggy1192)
ziggy1192.photos.attach(io: File.open('app/assets/images/food7.jpg'), filename: 'food7.jpg', content_type: 'image/jpg')
ziggy1192.photos.attach(io: File.open('app/assets/images/food8.jpg'), filename: 'food8.jpg', content_type: 'image/jpg')
ziggy1192.photos.attach(io: File.open('app/assets/images/food9.jpg'), filename: 'food9.jpg', content_type: 'image/jpg')
