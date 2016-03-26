Product.destroy_all
  p1 = Product.create  :name => 'Corcovado Top', :price => '$100,00', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xlf1/v/t1.0-9/12802996_251460061853308_3124721644856744166_n.jpg?oh=cbc38b2cffeb053c5a4cef12f2881232&oe=5789927A', :description => 'Canvas'
  p2 = Product.create  :name => 'Abacaxi & Piñas', :price => '$100,00', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/1929288_251031805229467_7169327449845161953_n.jpg?oh=70a2e13af3ca7481414c07809109b537&oe=577B72A6',  :description => 'Pinapple Pillow'
  p3 = Product.create  :name => 'Abacaxi Lined', :price => '$100,00', :image => 'https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xpt1/v/t1.0-9/10264399_251413231857991_8462928454095503203_n.jpg?oh=11376125760cdead98b0862dc324231d&oe=5786EBD8&__gda__=1468758236_397f4ed1c92619b6f400e566b2d22f2a',  :description => 'Canvas'
  p4 = Product.create  :name => 'Coco Coqueiro', :price => '$100,00', :image => 'https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xta1/v/t1.0-9/10455147_251028288563152_5433663587965353679_n.jpg?oh=9e3cd8a91033374f5e34e2df4377780c&oe=578734F1&__gda__=1469114488_379e7ff596eb2140993e0883e7a2ad23',  :description => 'Coco Coqueiro Pillow'
  p5 = Product.create  :name => 'Vou de Bondinho', :price => '$100,00', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xlt1/v/t1.0-9/12729226_251001155232532_1449936551686779297_n.jpg?oh=24af1499f17a2e0ade9d10738b764c5a&oe=5797B661',  :description => 'Sugar Loaf Print Tote Bag'
  p6 = Product.create  :name => 'Tudo Beleza!', :price => '$100,00', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/12321592_250904891908825_765905475693631330_n.jpg?oh=b5f0859027c3c5b1ba2f4cf2adf02b8c&oe=578D6B7A',  :description => 'Serie Instagram - Postal Cards'
  p7 = Product.create  :name => 'In Rio We Trust', :price => '$100,00', :image => 'https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/12794375_250904708575510_7312499421155626775_n.jpg?oh=162f692ac6d01d9d156af42842bc4694&oe=5781EB1A&__gda__=1468297107_7be3b716e399840f8a6659eb317f3beb',  :description => 'Corcovado Vibe Tote Bag'
  p8 = Product.create  :name => 'Peraí, só um click! Ipanema', :price => '$100,00', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/12790938_250531605279487_5006173119200488080_n.jpg?oh=8c835001427ba909d2013f9ee21b7e6e&oe=578A5708',  :description => 'Serie Instagram - Postal Cards'


Category.destroy_all
  c1 = Category.create  :name => 'Bags', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/12814312_250434475289200_3735811049237846486_n.jpg?oh=d197233cc828dd7a9f1053b37b8dfe9b&oe=578C59FB', :description => 'Beautiful Bags for you'
  c2 = Category.create  :name => 'PostCards', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/12814312_250434475289200_3735811049237846486_n.jpg?oh=d197233cc828dd7a9f1053b37b8dfe9b&oe=578C59FB', :description => 'From Rio with Love'
  c3 = Category.create  :name => 'Pillows', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/12814312_250434475289200_3735811049237846486_n.jpg?oh=d197233cc828dd7a9f1053b37b8dfe9b&oe=578C59FB', :description => 'Make it Home'
  c4 = Category.create  :name => 'Canvas', :image => 'https://scontent-syd1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/12814312_250434475289200_3735811049237846486_n.jpg?oh=d197233cc828dd7a9f1053b37b8dfe9b&oe=578C59FB', :description => 'Canvas'

  c1.products << p1 << p7
