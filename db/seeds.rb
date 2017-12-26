# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  User.create name: "Nara-#{n+1}"
end

User.all.each do |user|
  10.times do
    user.orders.create
  end
end

5.times do |n|
  Shop.create name: "Shop-#{n+1}"
end

Shop.all.each do |shop|
  10.times do
    shop.products.create
  end
end

Product.all.each do |product|
  10.times do
    product.notis.create
  end
end

Order.all.each do |order|
  10.times do
    order.notis.create
  end
end
