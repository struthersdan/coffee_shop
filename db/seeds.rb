# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
#
# Province.delete_all
# Province.create!(name: 'Alberta', GST: 0.05, code: 'AB')
# Province.create!(name: 'British Columbia', PST: 0.07, GST: 0.05, code: 'BC')
# Province.create!(name: 'Manitoba', PST: 0.08, GST: 0.05, code: 'MB')
# Province.create!(name: 'New Brunswick', HST: 0.15, code: 'NB')
# Province.create!(name: 'Newfoundland and Labrador', HST: 0.15, code: 'NL')
# Province.create!(name: 'Northwest Territories', GST: 0.05, code: 'NT')
# Province.create!(name: 'Nova Scotia', HST: 0.15, code: 'NS')
# Province.create!(name: 'Nunavut', GST: 0.05, code: 'NU')
# Province.create!(name: 'Ontario', HST: 0.13, code: 'ON')
# Province.create!(name: 'Prince Edward Island', HST: 0.15, code: 'PE')
# Province.create!(name: 'Québec', GST: 0.05, code: 'QC')
# Province.create!(name: 'Saskatchewan', GST: 0.05, code: 'SK')
# Province.create!(name: 'Yukon', GST: 0.05, code: 'YT')
#
# OrderStatus.delete_all
# OrderStatus.create! id: 1, name: "In Progress"
# OrderStatus.create! id: 2, name: "Placed"
# OrderStatus.create! id: 3, name: "Shipped"
# OrderStatus.create! id: 4, name: "Cancelled"
#
# Category.delete_all
# Category.create!(name: 'Hot Beverages')
# Category.create!(name: 'Cold Beverages')
# Category.create!(name: 'Pastry')
# Category.create!(name: 'Coffee Beans')
# Category.create!(name: 'Brewing Equipment')
# Category.create!(name: 'Novelties')
#
#
# Order.delete_all
# Order.create!()

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end


AdminUser.create!(email: 'me@danielstruthers.com', password: 'romeo123', password_confirmation: 'romeo123')

Category.create!([
                     {name: "Hot Beverages", description: nil},
                     {name: "Cold Beverages", description: nil},
                     {name: "Pastry", description: nil},
                     {name: "Coffee Beans", description: nil},
                     {name: "Brewing Equipment", description: nil},
                     {name: "Novelties", description: nil}
                 ])
Page.create!([
                               {title: "About", content: "James And  Sons is a local coffee shop that specializes in delicious beverages and fresh pastries, as well as offering a selection of beans and brewing equipment", image: "cafe-gourmande-258201_1920.jpg"},
                               {title: "Contact", content: "Address: 123 Fake St, Winnipeg MB, R3C 2N9\r\nTelephone: 204 - 123-4567\r\nEmail: info@jamesandsonscoffee.com\r\nHours: 7-7 Sunday- Saturday", image: "coffee-shop-1030994_1280.jpg"}
                           ])

Product.create!([
                    {name: "Latte", description: "A hot espresso based beverage with steamed milk", price: "5.0",category_id: 1, image: "maxpixel.freegreatpicture.com-Coffee-Cup-Latte-Art-Cafe-Espresso-Latte-Drink-2321823.jpg"},
                    {name: "Cappuccino", description: "A hot espresso beverage made with steamed milk and lots of foam", price: "4.0",category_id: 1, image: "Wet_Cappuccino_with_heart_latte_art.jpg"},
                    {name: "Chemex", description: "A unique pour over coffee maker that creates a delicious cup of coffee at home", price: "35.0", category_id: 5, image: "Die_Chemex_6_Cup.jpg"},
                    {name: "Coffee Beans ", description: "A pound of our freshly roasted coffee beans from the local supplier", price: "15.0", category_id: 4, image: "Union_Coffee_Bag.jpg"},
                    {name: "Iced Coffee", description: "A beverage made from cold brewed coffee, with simple syrup, milk and ice", price: "5.5",category_id: 2, image: "maxpixel.freegreatpicture.com-Ice-Benefit-From-Iced-Coffee-Cold-Coffee-Drink-2710485.jpg"}
                ])
Province.create!([
                     {name: "Alberta", PST: nil, GST: "0.05", HST: nil, code: "AB"},
                     {name: "British Columbia", PST: "0.07", GST: "0.05", HST: nil, code: "BC"},
                     {name: "Manitoba", PST: "0.08", GST: "0.05", HST: nil, code: "MB"},
                     {name: "New Brunswick", PST: nil, GST: nil, HST: "0.15", code: "NB"},
                     {name: "Newfoundland and Labrador", PST: nil, GST: nil, HST: "0.15", code: "NL"},
                     {name: "Northwest Territories", PST: nil, GST: "0.05", HST: nil, code: "NT"},
                     {name: "Nova Scotia", PST: nil, GST: nil, HST: "0.15", code: "NS"},
                     {name: "Nunavut", PST: nil, GST: "0.05", HST: nil, code: "NU"},
                     {name: "Ontario", PST: nil, GST: nil, HST: "0.13", code: "ON"},
                     {name: "Prince Edward Island", PST: nil, GST: nil, HST: "0.15", code: "PE"},
                     {name: "Québec", PST: nil, GST: "0.05", HST: nil, code: "QC"},
                     {name: "Saskatchewan", PST: nil, GST: "0.05", HST: nil, code: "SK"},
                     {name: "Yukon", PST: nil, GST: "0.05", HST: nil, code: "YT"}
                 ])
OrderStatus.create!([
                        {name: "In Progress"},
                        {name: "Placed"},
                        {name: "Shipped"},
                        {name: "Cancelled"}
                    ])

Order.create!([
                  {subtotal: "0.0", tax: nil, total: nil, order_status_id: 1}
              ])
