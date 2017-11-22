# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
#
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
# Category.create!(name: 'Hot Beverages')
# Category.create!(name: 'Cold Beverages')
# Category.create!(name: 'Pastry')
# Category.create!(name: 'Coffee Beans')
# Category.create!(name: 'Brewing Equipment')
# Category.create!(name: 'Novelties')
 AdminUser.create!(email: 'me@danielstruthers.com', password: 'romeo123', password_confirmation: 'romeo123') if Rails.env.development?
 Order.create!()
