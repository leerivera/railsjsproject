# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
User.destroy_all
Cart.destroy_all


cards = Product.create(name:"Cards", description:"asdflk, space filler", price: 35, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg", stock: 1)
tshirt = Product.create(name:"Tshirt", description:"asdflk, space filler", price: 25, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg", stock: 1)
pants = Product.create(name:"Pants", description:"asdflk, space filler", price: 10, image:"https://images.images4us.com/888poker/en/CRM_SmallPromotionMock_21TeaserImage_1447015375914_tcm1488-264090.jpg", stock: 1)
cigars = Product.create(name:"Cigars", description:"asdflk, space filler", price: 20, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg", stock: 1)
book = Product.create(name:"Poker Book", description:"asdflk, space filler", price: 40, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg", stock: 1)
special = Product.create(name:"Special cards", description:"asdflk, space filler", price: 21, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg", stock: 1)
poker_table = Product.create(name:"Poker table", description:"asdflk, space filler", price: 7, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg", stock: 1)
hat = Product.create(name:"Hat", description:"asdflk, space filler", price: 8, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg" , stock: 1)
hoodie = Product.create(name:"Hoodie", description:"asdflk, space filler", price: 9, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg" , stock: 1)
book = Product.create(name:"Book", description:"asdflk, space filler", price: 13, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg" , stock: 1)
random1 = Product.create(name:"Random", description:"asdflk, space filler", price: 15, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg" , stock: 1)
random2 = Product.create(name:"Random", description:"asdflk, space filler", price: 16, image:"https://brutalgamer.com/wp-content/uploads/2012/12/FREE_STOCK__Playing_Cards_2_by_mmp_stock.jpg" , stock: 1)


nick = User.create(name:"nick", email:"blah@gmail.com")
cj = User.create(name:"cj", email:"cj@gmail.com")

Cart.create(user_id: nick.id, product_id: hoodie.id)
Cart.create(user_id: cj.id, product_id: hat.id)
