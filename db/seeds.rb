# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Board.create(name: "board name")

10.times do 
  @board = Board.create(
    name: Faker::University.name
  )
  end
  10.times do
    @list = List.create(
      name: Faker::FunnyName.name, 
      # board_id: @board.id
    )
  end



puts "seeded"


# User.create(email: "test@test.com", password: "password", password_confirmation: "password")
# 10.times do 
#   Client.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     phone: Faker::PhoneNumber.phone_number,
#     user_id: 1
#   )
# end
