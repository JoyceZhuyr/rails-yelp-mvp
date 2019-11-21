Restaurant.destroy_all
Review.destroy_all

5.times do
  r = Restaurant.create!(name: Faker::Restaurant.name,
                         address: Faker::Address.street_address,
                         category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  puts "Created #{r.name}"

  Review.create!(content: Faker::Restaurant.review,
  rating: rand(1..5), restaurant_id: Restaurant.all.sample_id)
end
