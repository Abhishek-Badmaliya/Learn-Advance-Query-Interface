# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
5.times do |i|
  Customer.create(
    cust_fname: Faker::Name.first_name,
    cust_lname: Faker::Name.last_name,
    cust_email: Faker::Internet.safe_email,
    cust_phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  )
  puts "Customer #{i} created !!!"
end

15.times do |i|
  Product.create(
    title: Faker::Name.first_name,
    description: Faker::Name.last_name,
    cust_email: Faker::Internet.safe_email,
    cust_phone_number: Faker::PhoneNumber.phone_number_with_country_code,
  )
  puts "Customer #{i} created !!!"
end
