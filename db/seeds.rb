puts "Cleaning database"
User.destroy_all
Chef.destroy_all

puts "Creating users..."
theresa = User.create!(email: "theresa@test.com", password: "123456", first_name: "theresa", last_name: "adeyemi", address:" 202 Kensington Church Street")

puts "Creating chefs..."
Chef.create!(speciality: "Michelin starred", cuisine: "French", price: 100, profile: "I have worked in Michelin starred kitchens, book me", user: theresa)
