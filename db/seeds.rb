User.destroy_all
User.create!([
  {email: "david.feuillard@gmail.com", password_digest: "$2a$10$9676BuFIy7PGVEt6EgkdMuCWvIzmY5fvXbYCvnE1Eu2q/fiW/T7R.", admin: false, image: nil, username: "David"},
  {email: "azevedo.rany@gmail.com", password_digest: "$2a$10$TtMJiSf9.4E7BnFBvYlN3uXJOaLR5WD8daYpTS9oMEV3E80dFy05W", admin: true, image: "https://scontent-syd1-1.xx.fbcdn.net/hphotos-frc3/v/t1.0-9/529492_4066538556637_438617894_n.jpg?oh=3d9bac98a4d90f1c9eaf8b8f67b7b243&oe=578332A0", username: "Rany"},
  {email: "pauli@ga.co", password_digest: "$2a$10$ta3HCalqbXqqc/.VBkXNYeiBkKcrpdBdby7h53bojTHd7PVsOpHp.", admin: false, image: nil, username: "pauli"}
])
Category.destroy_all
Category.create!([
  {name: "Accessories", image: "http://s19.postimg.org/nmaayx5b7/275accessories.jpg", description: "", banner: "http://s19.postimg.org/sormtpelf/banneraccessories.jpg"},
  {name: "Stationary", image: "http://s19.postimg.org/mhg8tjiub/550_Stationery.jpg", description: "", banner: "http://s19.postimg.org/y2v0eztpf/bannersta.jpg"},
  {name: "Home", image: "http://s19.postimg.org/qhne5s9b7/550home.jpg", description: "", banner: "http://s19.postimg.org/8g497zfab/bannerhome.jpg"},
  {name: "Clothes", image: "http://s19.postimg.org/jbvn3c083/275clothes.jpg", description: "", banner: "http://s19.postimg.org/u7rmcfajn/bannerclothes.jpg"}
])
Product.destroy_all
Product.create!([
  {name: "Abacaxi & Piñas", price: "R$100,00", image: "https://scontent-syd1-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/1929288_251031805229467_7169327449845161953_n.jpg?oh=70a2e13af3ca7481414c07809109b537&oe=577B72A6", description: "", imageshow: nil},
  {name: "Vou de Bondinho", price: "R$80,00", image: "https://scontent-syd1-1.xx.fbcdn.net/hphotos-xlt1/v/t1.0-9/12729226_251001155232532_1449936551686779297_n.jpg?oh=24af1499f17a2e0ade9d10738b764c5a&oe=5797B661", description: "", imageshow: nil},
  {name: "Tudo Beleza!", price: "R$10,00", image: "https://scontent-syd1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/12321592_250904891908825_765905475693631330_n.jpg?oh=b5f0859027c3c5b1ba2f4cf2adf02b8c&oe=578D6B7A", description: "", imageshow: nil},
  {name: "In Rio We Trust", price: "R$80,00", image: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/12794375_250904708575510_7312499421155626775_n.jpg?oh=162f692ac6d01d9d156af42842bc4694&oe=5781EB1A&__gda__=1468297107_7be3b716e399840f8a6659eb317f3beb", description: "", imageshow: nil},
  {name: "Peraí, só um click! Ipanema", price: "R$10,00", image: "https://scontent-syd1-1.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/12790938_250531605279487_5006173119200488080_n.jpg?oh=8c835001427ba909d2013f9ee21b7e6e&oe=578A5708", description: "", imageshow: nil},
  {name: "From Ipanema with Love", price: "R$10,00", image: "https://scontent-syd1-1.xx.fbcdn.net/hphotos-xtf1/v/t1.0-9/12801345_250531368612844_1992660182654962625_n.jpg?oh=69c4ed168a0ff968be25dd416c3b9d46&oe=578E7426", description: "", imageshow: nil},
  {name: "Corcovado Top", price: "R$50,00", image: "https://scontent-syd1-1.xx.fbcdn.net/hphotos-xlf1/v/t1.0-9/12802996_251460061853308_3124721644856744166_n.jpg?oh=cbc38b2cffeb053c5a4cef12f2881232&oe=5789927A", description: "", imageshow: nil},
  {name: "Abacaxi Lined", price: "R$50,00", image: "https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xpt1/v/t1.0-9/10264399_251413231857991_8462928454095503203_n.jpg?oh=11376125760cdead98b0862dc324231d&oe=5786EBD8&__gda__=1468758236_397f4ed1c92619b6f400e566b2d22f2a", description: "", imageshow: nil},
  {name: "Coco Coqueiro", price: "R$100,00", image: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xta1/v/t1.0-9/10455147_251028288563152_5433663587965353679_n.jpg?oh=9e3cd8a91033374f5e34e2df4377780c&oe=578734F1&__gda__=1469114488_379e7ff596eb2140993e0883e7a2ad23", description: "", imageshow: "http://s19.postimg.org/ktlosmucj/testprodutos.png"}
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
Favorite.destroy_all
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
