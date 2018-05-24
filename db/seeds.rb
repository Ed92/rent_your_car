# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(email: "betty@ford.com", password: "123456", location: "133 Fleet Street, London, EC4A 2BB")
user2 = User.create(email: "jack@daniels.com", password: "123456", location: "1 Bunhill Row, London, EC1Y 8YY")
user3 = User.create(email: "johnnie@walker.com", password: "123456", location: "4 Dover Street, London, W1S 4LB")
user4 = User.create(email: "remy@martin.com", password: "123456", location: "47 Great Suffolk Street, London, SE1 0BS")
user5 = User.create(email: "martin@miller.com", password: "123456", location: "10 Bread Street, London, EC4M 9AJ")

user1.save!
user2.save!
user3.save!
user4.save!
user5.save!

user = User.last

cars1 = Car.new(make: 'Ford mondeo', rental_rate: 250, description: "Cool car", user: user1, registration_number: 'HV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')
cars2 = Car.new(make: 'Opel astra', rental_rate: 200, description: "Really cool car", user: user2, registration_number: 'GV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')

cars3 = Car.new(make: 'Ferrari', rental_rate: 450, description: "Super car", user: user3, registration_number: 'FV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')
cars4 = Car.new(make: 'Porsche', rental_rate: 400, description: "Fast car", user: user4, registration_number: 'DV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')

cars4 = Car.new(make: 'Vauxhall Astra', rental_rate: 400, description: "Cheap Car", user: user5, registration_number: 'CV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')





cars1.save!
cars2.save!
cars3.save!
cars4.save!
