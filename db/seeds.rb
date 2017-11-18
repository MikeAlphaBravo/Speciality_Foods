Product.destroy_all

50.times do |index|
  Product.create(
    name: (Faker::Food.ingredient).downcase!,
    cost: Faker::Number.decimal(3, 2),
    origin: (Faker::Address.country).downcase!
    )
end

p "You now have #{Product.count} products in your db"

Review.destroy_all

250.times do |index|
  Review.create(
    author: (Faker::Name.name).downcase!,
    content: Faker::Lorem.paragraph(3),
    rating: Faker::Number.(1)
    )
end

p "You now have #{Review.count} reviews in your db"
