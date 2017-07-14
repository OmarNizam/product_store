Photo.destroy_all
Product.destroy_all
User.destroy_all

user1 = User.create!(email: "omar@omar.com", password: "abcd1234")



product1 = Product.create!(name: "Book1", description: "it is a new book1 !!", price: 10, in_stock: true)
product2 = Product.create!(name: "Book2", description: "it is a new book2 !!", price: 11, in_stock: true)
product3 = Product.create!(name: "Book3", description: "it is a new book3 !!", price: 12, in_stock: true)


photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499782986/bb_just_courage_2_uvgdym.jpg", product: product1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499782985/aba-06_p0sv5x.png", product: product2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499782986/ruby_on_rails_tutorial_a8w5xt.jpg", product: product3)

cart1 = Cart.create!(user: user1, product: product1)
