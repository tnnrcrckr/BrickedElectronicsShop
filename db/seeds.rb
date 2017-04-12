# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts("Seeding Users")
User.create!(name:  "Tanner Crocker",
             email: "tec@email.uscupstate.edu",
             password:              "foobarbin",
             password_confirmation: "foobarbin",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobarboo",
             password_confirmation: "foobarboo",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

48.times do |n|
  name  = Faker::Name.name
  email = Faker::Internet.safe_email("example-#{n+1}") #=> "exampleN@example.net", "exampleN@tutorial.net"
  password = "foobarboo"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
   puts("Seeding...") if n % 25 == 0
end


puts("Seeding products")
content = ""
Faker::Lorem.paragraphs(3).each {|c| content += c + ' '}

Product.create!(
    title: "Starter Kit",
    description: content,
    image: "products/Starter.jpg",
    price: 83.99
    )
Product.create!(
    title: "Breadboard & Lego Kit",
    description: content,
    image: "products/Breadboard_Lego.jpg",
    price: 74.99
    )
Product.create!(
    title: "Robotic Arm Kit",
    description: content,
    image: "products/Robo_Arm.jpg",
    price: 89.99
    )
Product.create!(
    title: "Robotic Rover Kit",
    description: content,
    image: "products/Robo_Rover.jpg",
    price: 93.99
    )


puts("Seeding reviews")
users = User.order(:created_at).take(15)
10.times do |n|
  content = ""
  Faker::Lorem.paragraphs(6).each {|c| content += c + ' '}
  users.each do |user|
      prod = Product.all.sample(1)[0]
     user.reviews.create!(
         content: content,
         product: prod
         ) 
  end
   puts("Seeding...") if n % 3 == 0
end


puts("Seeds complete")