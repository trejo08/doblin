# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


500.times do |variable|
  u = User.new
  u.name = Faker::Name.first_name
  u.lastname = Faker::Name.last_name
  u.email = Faker::Internet.email
  u.password = 'abcdabcdba'
  u.password_confirmation = 'abcdabcdba'
  u.save
  puts "user saved with email: #{u.email}"
end
