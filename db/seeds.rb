Favorite.destroy_all
User.destroy_all
User.create!([
  {email: "david.feuillard@gmail.com", password: "chicken12", admin: false, image: nil, username: "David"},
  {email: "azevedo.rany@gmail.com", password: "chicken12", admin: true, image: "http://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-frc3/v/t1.0-9/529492_4066538556637_438617894_n.jpg?oh=79f867b7cc08820a45178008f1a22d3e&oe=57D24CA0&__gda__=1469712159_d7780001d93b5c4f9d7de4dbd9c4386a", username: "Rany"},
  {email: "pauli@ga.co", password: "chicken12", admin: false, image: nil, username: "pauli"}
])
Category.destroy_all
Category.create!([
  {name: "Bolsas", banner: "http://res.cloudinary.com/rany/image/upload/v1472065004/iewl4zrfenj5lympekib.jpg", description: "", image: nil},
  {name: "Postais", banner: "http://res.cloudinary.com/rany/image/upload/v1472065290/jtxix2ephkx5jq4nqgkc.jpg", description: "", image: nil},
  {name: "Home", banner: "http://res.cloudinary.com/rany/image/upload/v1472065053/t3bjzmiiq6yslhmqcrkz.jpg", description: "", image: nil},
  {name: "Posters", banner: "http://res.cloudinary.com/rany/image/upload/v1472065070/deg7xfvrlfyjcwosj4zi.jpg", description: "", image: nil}
])
Product.destroy_all
Product.create!([
  {name: "Tote Bag Copacabana", inventory: "10", price: "40", image: "http://res.cloudinary.com/rany/image/upload/v1471890380/ewy3ylkbsttov67353yz.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471890704/qv0yr8z5xpo6teh2w39f.jpg"},
  {name: "Tote Bag Dois Irmãos", inventory: "10", price: "40", image: "http://res.cloudinary.com/rany/image/upload/v1471901045/rakkhgvend7jnife5koa.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471901311/vlpeegpfv74styipbteh.jpg"},
  {name: "Tote BAg Rio Geométrico", inventory: "10", price: "40", image: "http://res.cloudinary.com/rany/image/upload/v1471901225/wgyzhshnzgxagxszbtqi.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471901258/idntrh0gfcpbfgwgdxbh.jpg"},
  {name: "Postal Rio Geométrico", inventory: "10", price: "3", image: "http://res.cloudinary.com/rany/image/upload/v1471815104/orozzasl5fdc3irhu7pf.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471822072/pctkeybtrmjiistxxrrf.jpg"},
  {name: "Postal Saudade", inventory: "10", price: "3", image: "http://res.cloudinary.com/rany/image/upload/v1471814947/qtmxsfstuzeivjhm4aof.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471823364/trzn5bownfiuqplvs0w4.jpg"},
  {name: "Postal Corcovado", inventory: "10", price: "3", image: "http://res.cloudinary.com/rany/image/upload/v1471815067/l6brudvzrjyiwcsxblh7.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471823632/qz1zawae8dpv20vb4srt.jpg"},
  {name: "Almofada Corcovado", inventory: "10", price: "80", image: "http://res.cloudinary.com/rany/image/upload/v1471816386/rq4tbvxyjjflrmttu4dd.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471827671/ncfgiaycikkesatnqv60.jpg"},
  {name: "Almofada Abacaxi Lined", inventory: "10", price: "80", image: "http://res.cloudinary.com/rany/image/upload/v1471807364/hxeujshntvx5kqbzxm2k.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471827777/mwbgxwjmrimw5nndeyhh.jpg"},
  {name: "Almofada Folha", inventory: "10", price: "80", image: "http://res.cloudinary.com/rany/image/upload/v1471808461/uabh3dsuqtfomd1eetap.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1471827943/jttk08mbpk8fjfnfyepq.jpg"},
  {name: "Poster Rio Geométrico", inventory: "10", price: "80", image: "http://res.cloudinary.com/rany/image/upload/v1471916173/ua3ookkl0xri4j0qq03p.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1472141011/nqfyhyyr09zdgu7fhexd.jpg"},
  {name: "Poster Abacaxi Lined", inventory: "10", price: "80", image: "http://res.cloudinary.com/rany/image/upload/v1472136887/jwn9axafnftikcknyvgw.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1472137264/ficsl4oj1lok4iiccsm3.jpg"},
  {name: "Poster Dois Irmãos", inventory: "10", price: "80", image: "http://res.cloudinary.com/rany/image/upload/v1471817859/eb1219zhcfmeuk1qpsl8.jpg", description: "", imageshow: "http://res.cloudinary.com/rany/image/upload/v1472141961/at6i4sdy0gfhznhlxpmx.jpg"}
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
