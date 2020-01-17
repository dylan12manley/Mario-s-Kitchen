# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Product.destroy_all
Review.destroy_all

10.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                   cost: rand(15),
                   country_of_origin: "USA")
end

40.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                   cost: rand(20),
                   country_of_origin: "Canada")
end

p "Created #{Product.count} products"
# 250.times do |index|
#   Review.create!(author: Faker::Artist.name,
#                 content_body: Faker::Lorem.paragraph(sentence_count: 7, supplemental: true),
#                 rating: rand(5),
#                 product_id: rand(50) )
# end

# p "Created #{Review.count} reviews"
