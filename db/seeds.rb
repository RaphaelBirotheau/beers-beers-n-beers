
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
usertest = User.create(first_name: "Paulo", last_name: "Lalcoolo", location:"Parisieeen", drinks:"Ricardo", email:"paulo.lalcoolo@ricardo.dirnk", password:"password")
userorganizer = User.create(first_name: "Thomas", last_name: "bozzo", location:"Péguuuuu", drinks:"Pinard", email:"Thomas.pinard@bozzo.drink", password:"jemappelle")
userdrinker =User.create(first_name: "Felix", last_name: "LM", location:"Cul-terreux", drinks:"sex on the beach", email:"felix.culterreux@sotb.drink", password:"lolita")
aperotest = Apero.create!(date: "25 août", description: "allez viens, tu verras tout ce qu'on peut faire", place: "dtc", user: usertest, capacity: 12)
