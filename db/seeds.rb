Product.destroy_all
created_products = 0
while created_products < 50
  product = Product.new(
    name: Faker::Food.ingredient.downcase,
    cost: Faker::Number.decimal(3, 2),
    origin: Faker::Address.country.downcase
    )
    created_products += 1 if product.save
    # else
    #   puts "this errored on save #{product.inspect}"
    # end
end

p "You now have #{Product.count} products in your db"

Review.destroy_all

250.times do |index|
  random_product = Product.all.sample
  random_product.reviews.create(
    author: Faker::Name.name.downcase,
    content: Faker::Lorem.paragraph(3),
    rating: Faker::Number.number(1)
    )
end

p "You now have #{Review.count} reviews in your db"
