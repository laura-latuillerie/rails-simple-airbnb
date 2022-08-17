# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require "open-uri"
require "nokogiri"

Flat.destroy_all

images = %w[
  https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60
  https://images.unsplash.com/photo-1600585152220-90363fe7e115?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60
  https://images.unsplash.com/photo-1537726235470-8504e3beef77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60
  https://images.unsplash.com/photo-1503174971373-b1f69850bded?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60
  https://images.unsplash.com/photo-1596204976717-1a9ff47f74ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGludGVyaW9yJTIwZGVzaWdufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=600&q=60
  https://images.unsplash.com/photo-1600607687920-4e2a09cf159d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGludGVyaW9yJTIwZGVzaWdufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=600&q=60
  https://images.unsplash.com/photo-1600210491369-e753d80a41f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGludGVyaW9yJTIwZGVzaWdufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=600&q=60
]

counter = 0

5.times do
  city = Faker::Address.city
  Flat.create!(
  name: "#{Faker::Adjective.positive.capitalize} & #{Faker::Adjective.positive.capitalize} Garden Flat #{city}",
  address: "#{Faker::Address.street_address} #{city}",
  description: Faker::Lorem.paragraph(sentence_count: 10),
  price_per_night: rand(50..1000),
  number_of_guests: rand(1..10),
  image: images[counter]
  )
  counter +=1
end

