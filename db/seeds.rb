# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



p = Product.create! name: "Aata", price: 10, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
p = Product.create!  name: "Suji", price: 20, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
p =Product.create!  name: "Pakodi", price: 3, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
p =Product.create!  name: "Suji-1", price: 20, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
p =Product.create!  name: "Suji-2", price: 20, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
p =Product.create!  name: "Suji-3", price: 20, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
p =Product.create!  name: "Suji-4", price: 20, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
p =Product.create!  name: "Suji-5", price: 20, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
p =Product.create!  name: "Suji-6", price: 20, active: true
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))



OrderStatus.create!  name: "Placed"
OrderStatus.create!  name: "Shipped"
OrderStatus.create!  name: "Cancelled"
OrderStatus.create!  name: "In Progress"
