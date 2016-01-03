# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RecyclableItem.create!({barcode: "04913207", points: 1, weight: 14.9, name: "sprite"})
RecyclableItem.create!({barcode: "02206316", points: 4, weight: 226, name: "pabst blue ribbon"})
RecyclableItem.create!({barcode: "611269357011", points: 2, weight: 12.0, name: "red bull - red"})
RecyclableItem.create!({barcode: "04965802", points: 1, weight: 14.9, name: "diet coke"})

