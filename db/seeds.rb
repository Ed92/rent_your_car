# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user = User.last

cars1 = Car.new(make: 'Ford mondeo', rental_rate: 2500, description: "Cool car", user: user, registration_number: 'HV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')
cars2 = Car.new(make: 'Opel astra', rental_rate: 2000, description: "Really cool car", user: user, registration_number: 'HV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')

cars3 = Car.new(make: 'Ferrari', rental_rate: 2500, description: "Super car", user: user, registration_number: 'HV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')
cars4 = Car.new(make: 'Porsche', rental_rate: 2000, description: "Fast car", user: user, registration_number: 'HV13HNM', photo: 'https://www.autotrader.co.uk/images/at3/sell/landing-pages/hero-car.png')


cars1.save!
cars2.save!
cars3.save!
cars4.save!
