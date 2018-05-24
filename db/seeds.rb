# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.destroy_all
Car.destroy_all
User.destroy_all
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



