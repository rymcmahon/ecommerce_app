User.create!([
  {email: "rymcmahon716@gmail.com", encrypted_password: "$2a$10$KTrwFVE6xewhYEcr7DuSm.KHDW8oAJDcd8.AtI51qicML16S8ahuy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2015-02-22 15:31:30", last_sign_in_at: "2015-02-20 02:42:10", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])

Product.create!([
  {price: "99.99", title: "Bauer Hockey Stick", image: "http://www.purehockey.com/productimages/bauer-nexus-8000-le-senior-composite-stick-2014-DEFAULT-44237-L.jpg", description: "", category: "sticks", vendor_id: 1},
  {price: "59.99", title: "Gloves", image: "http://ep.yimg.com/ay/hockeymonkey/bauer-supreme-one-6-sr-hockey-gloves-17.jpg", description: nil, category: "gloves", vendor_id: 1},
  {price: "129.99", title: "Vapor X30 Shoulder Pads", image: "http://www.hockeybrotherhood.com/cart/images/Vapor%20X30%20Sr.%20Shoulder%20Pads.jpg", description: "Top of the line protection without inhibiting movements.", category: "shoulder_pads", vendor_id: 1}
])
ProductOption.create!([
  {name: "Small", product_id: 1},
  {name: "Medium", product_id: 1},
  {name: "Large", product_id: 1}
])
Vendor.create!([
  {name: "Bauer", email: "bauer@gmail.com", phone: "7166629878"}
])
