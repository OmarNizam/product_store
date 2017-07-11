User.destroy_all

omar = User.create!(email: "omar@omar.com", password: "abcd1234")


product = Product.create!(name: "Book", description: "it is a new book !!", price: 10, in_stock: true)
