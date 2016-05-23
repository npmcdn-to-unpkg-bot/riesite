Favorite.destroy_all
User.destroy_all
User.create!([
  {email: "david.feuillard@gmail.com", password: "chicken12", admin: false, image: nil, username: "David"},
  {email: "azevedo.rany@gmail.com", password: "chicken12", admin: true, image: "http://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-frc3/v/t1.0-9/529492_4066538556637_438617894_n.jpg?oh=79f867b7cc08820a45178008f1a22d3e&oe=57D24CA0&__gda__=1469712159_d7780001d93b5c4f9d7de4dbd9c4386a", username: "Rany"},
  {email: "pauli@ga.co", password: "chicken12", admin: false, image: nil, username: "pauli"}
])
Category.destroy_all
Category.create!([
  {name: "Accessories", banner: "http://res.cloudinary.com/rany/image/upload/v1459380743/omrr0gq3qgpdhrkdqz2b.jpg", description: "", image: "http://s19.postimg.org/nmaayx5b7/275accessories.jpg"},
  {name: "Stationary", banner: "http://res.cloudinary.com/rany/image/upload/v1459380787/ikqf1o1klpdmxau3wtks.jpg", description: "", image: "http://res.cloudinary.com/rany/image/upload/v1459368703/t0yocyx0aegiibbuniiu.jpg"},
  {name: "Home", banner: "http://res.cloudinary.com/rany/image/upload/v1459380764/yxuyazcnnoo77e6ejm3v.jpg", description: "", image: "http://s19.postimg.org/qhne5s9b7/550home.jpg"},
  {name: "Clothes", banner: "http://res.cloudinary.com/rany/image/upload/v1459380523/rskaoplgezjfefanotvq.jpg", description: "", image: "http://s19.postimg.org/jbvn3c083/275clothes.jpg"}
])
Product.destroy_all
Product.create!([
  {name: "Abacaxi & Piñas", price: "R$100,00", image: "http://res.cloudinary.com/rany/image/upload/v1459323383/elkx40idw91rsz48mkmq.jpg", description: "", imageshow: nil},
  {name: "Sugar Loaf Print", price: "R$80,00", image: "http://res.cloudinary.com/rany/image/upload/v1459323443/ccpcqvfyjowps4nabooe.jpg", description: "", imageshow: nil},
  {name: "Tudo Legal!", price: "R$10,00", image: "http://res.cloudinary.com/rany/image/upload/v1459323413/rbnh0veimqgmmpa4c3ab.jpg", description: "", imageshow: nil},
  {name: "In Rio We Trust", price: "R$80,00", image: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/12794375_250904708575510_7312499421155626775_n.jpg?oh=162f692ac6d01d9d156af42842bc4694&oe=5781EB1A&__gda__=1468297107_7be3b716e399840f8a6659eb317f3beb", description: "", imageshow: nil},
  {name: "Peraí, só um click! Ipanema", price: "R$10,00", image: "http://res.cloudinary.com/rany/image/upload/v1459323499/n94ud3fmnvohxg9saxff.jpg", description: "", imageshow: nil},
  {name: "From Ipanema with Love", price: "R$10,00", image: "http://res.cloudinary.com/rany/image/upload/v1459384482/cy2knm4eedlsmyf8g7kj.jpg", description: "", imageshow: nil},
  {name: "Corcovado Pop", price: "R$50,00", image: "http://res.cloudinary.com/rany/image/upload/v1459323547/l87iglonhptzigxwmuh0.jpg", description: "", imageshow: nil},
  {name: "Abacaxi Lined", price: "R$50,00", image: "http://res.cloudinary.com/rany/image/upload/v1459323521/dvrz0ulh7k4ffv0pcpuj.jpg", description: "", imageshow: nil},
  {name: "Coco Coqueiro", price: "R$100,00", image: "http://res.cloudinary.com/rany/image/upload/v1459323469/sgyxtwqyhh58ixczkozy.png", description: "", imageshow: "http://s19.postimg.org/ktlosmucj/testprodutos.png"}
])
Category::HABTM_Products.create!([
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id: Product.all.sample.id}
])
Favorite.create!([
  {user_id: User.first.id, favorited_id: Product.all.sample.id, favorited_type: "Product"},
  {user_id: User.first.id, favorited_id: Product.all.sample.id, favorited_type: "Product"},
  {user_id: User.last.id, favorited_id: Product.all.sample.id, favorited_type: "Product"},
  {user_id: User.first.id, favorited_id: Product.all.sample.id, favorited_type: "Product"},
  {user_id: User.last.id, favorited_id: Product.all.sample.id, favorited_type: "Product"},
  {user_id: User.first.id, favorited_id: Product.all.sample.id, favorited_type: "Product"},
  {user_id: User.first.id, favorited_id: Product.all.sample.id, favorited_type: "Product"}
])
Product::HABTM_Categories.create!([
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id},
  {category_id: Category.all.sample.id, product_id:  Product.all.sample.id}
])
