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
      board_id: @board.id
    )
  end



puts "seeded"


