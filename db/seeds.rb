# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!({name: 'brian'})
User.create!({name: 'grant'})
RecycleItem.create!({barcode: "611269991000", points: 2, weight: 1.0, name: "red bull regular"})
RecycleItem.create!({barcode: "611269142631", points: 2, weight: 1.0, name: "red bull zero - orange"})

