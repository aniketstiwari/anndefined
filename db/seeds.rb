# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



p = Product.create! name: "Honey Base", price: 500, active: true,description: "<h5 style='color: #a53d3a;'><u>DESCRIPTION</u></h5>
				<p>Flour with the goodness of barley</p>
				<p>Shelf Life: 5 Months</p>
				<p>Ingredients: Barley</p>
				<p>Serving size: Comparitively fewer need for chappatis&nbsp;</p>
				<p>Best served with curries, vegetables, gravy, or stuffed</p>
				<p>Allergen: The product doesn’t contain yeast , nut and egg. &nbsp;Not suitable for individuals with gluten sensitivity, corn and soy allergy. &nbsp;</p>",max_allowed_quantity: 10
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/1.jpg')))
p = Product.create!  name: "Jaggery Base", price: 225, active: true,description: "<h5 style='color: #a53d3a;'><u>DESCRIPTION</u></h5>
				<p>Flour with the goodness of barley</p>
				<p>Shelf Life: 5 Months</p>
				<p>Ingredients: Barley</p>
				<p>Serving size: Comparitively fewer need for chappatis&nbsp;</p>
				<p>Best served with curries, vegetables, gravy, or stuffed</p>
				<p>Allergen: The product doesn’t contain yeast , nut and egg. &nbsp;Not suitable for individuals with gluten sensitivity, corn and soy allergy. &nbsp;</p>",max_allowed_quantity: 15
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/2.jpg')))
p =Product.create!  name: "Flour", price: 300, active: true,description: "<h5 style='color: #a53d3a;'><u>DESCRIPTION</u></h5>
				<p>Flour with the goodness of barley</p>
				<p>Shelf Life: 5 Months</p>
				<p>Ingredients: Barley</p>
				<p>Serving size: Comparitively fewer need for chappatis&nbsp;</p>
				<p>Best served with curries, vegetables, gravy, or stuffed</p>
				<p>Allergen: The product doesn’t contain yeast , nut and egg. &nbsp;Not suitable for individuals with gluten sensitivity, corn and soy allergy. &nbsp;</p>",max_allowed_quantity: 20
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/3.jpg')))
p =Product.create!  name: "Salty Bites", price: 525, active: true,description: "<h5 style='color: #a53d3a;'><u>DESCRIPTION</u></h5>
				<p>Flour with the goodness of barley</p>
				<p>Shelf Life: 5 Months</p>
				<p>Ingredients: Barley</p>
				<p>Serving size: Comparitively fewer need for chappatis&nbsp;</p>
				<p>Best served with curries, vegetables, gravy, or stuffed</p>
				<p>Allergen: The product doesn’t contain yeast , nut and egg. &nbsp;Not suitable for individuals with gluten sensitivity, corn and soy allergy. &nbsp;</p>",max_allowed_quantity: 25
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/5.jpg')))
p =Product.create!  name: "Fig-bites", price: 300, active: true,description: "<h5 style='color: #a53d3a;'><u>DESCRIPTION</u></h5>
				<p>Flour with the goodness of barley</p>
				<p>Shelf Life: 5 Months</p>
				<p>Ingredients: Barley</p>
				<p>Serving size: Comparitively fewer need for chappatis&nbsp;</p>
				<p>Best served with curries, vegetables, gravy, or stuffed</p>
				<p>Allergen: The product doesn’t contain yeast , nut and egg. &nbsp;Not suitable for individuals with gluten sensitivity, corn and soy allergy. &nbsp;</p>",max_allowed_quantity: 30
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/6.jpg')))
p =Product.create!  name: "Chapattis", price: 700, active: true,description: "<h5 style='color: #a53d3a;'><u>DESCRIPTION</u></h5>
				<p>Flour with the goodness of barley</p>
				<p>Shelf Life: 5 Months</p>
				<p>Ingredients: Barley</p>
				<p>Serving size: Comparitively fewer need for chappatis&nbsp;</p>
				<p>Best served with curries, vegetables, gravy, or stuffed</p>
				<p>Allergen: The product doesn’t contain yeast , nut and egg. &nbsp;Not suitable for individuals with gluten sensitivity, corn and soy allergy. &nbsp;</p>",max_allowed_quantity: 35
p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/7.jpg')))


# p =Product.create!  name: "Suji-4", price: 20, active: true
# p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
# p =Product.create!  name: "Suji-5", price: 20, active: true
# p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))
# p =Product.create!  name: "Suji-6", price: 20, active: true
# p.images.create(name:File.open(File.join(Rails.root,'app/assets/images/Barley_Atta_1024x1024.jpg')))



OrderStatus.create!  name: "Placed"
OrderStatus.create!  name: "Shipped"
OrderStatus.create!  name: "Cancelled"
OrderStatus.create!  name: "In Progress"
