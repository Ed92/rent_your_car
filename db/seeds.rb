# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.last

cars1 = Car.new(make: 'Ford mondeo', rental_rate: 2500, description: "Cool car", user: user )
cars2 = Car.new(make: 'Opel astra', rental_rate: 2000, description: "Really cool car", user: user)


cars1.save!
cars2.save!
