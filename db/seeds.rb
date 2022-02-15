# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "seeding users"

user_arr = [
    "https://randomuser.me/api/portraits/men/94.jpg",
    "https://randomuser.me/api/portraits/men/28.jpg",
    "https://randomuser.me/api/portraits/men/64.jpg",
    "https://randomuser.me/api/portraits/men/81.jpg",
    "https://randomuser.me/api/portraits/women/67.jpg",
    "https://randomuser.me/api/portraits/women/85.jpg",
    "https://randomuser.me/api/portraits/women/60.jpg",
    "https://randomuser.me/api/portraits/women/42.jpg",
    "https://randomuser.me/api/portraits/women/72.jpg",
    "https://randomuser.me/api/portraits/men/14.jpg"
]

j = 0
15.times do
    j = j + 1
  
    user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password(min_length: 5, max_length: 10), location: "#{Faker::Address.city}, #{Faker::Address.state}", url: user_arr[j-1] )
end

puts "done seeding users"

puts "seeding games"

game1 = Game.create(location: "#{Faker::Address.city}, #{Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), num_of_players: Faker::Number.between(from: 1, to: 10))
game2 = Game.create(location: "#{Faker::Address.city}, #{Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), num_of_players: Faker::Number.between(from: 1, to: 10))
game3 = Game.create(location: "#{Faker::Address.city}, #{Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), num_of_players: Faker::Number.between(from: 1, to: 10))
game4 = Game.create(location: "#{Faker::Address.city}, #{Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), num_of_players: Faker::Number.between(from: 1, to: 10))
game5 = Game.create(location: "#{Faker::Address.city}, #{Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), num_of_players: Faker::Number.between(from: 1, to: 10))

puts "done seeding games"

puts "seeding comments"

comment1 = Comment.create(comment: "I'm so excited to play!", user_id: User.all.sample.id)
comment2 = Comment.create(comment: "Do we need to bring anything else?", user_id: User.all.sample.id)
comment3 = Comment.create(comment: "Do you all want to get food afterwards?", user_id: User.all.sample.id)
comment4 = Comment.create(comment: "Should we get there early to set up?", user_id: User.all.sample.id)
comment5 = Comment.create(comment: "How long do you think the game will go?", user_id: User.all.sample.id)
comment6 = Comment.create(comment: "I'll bring another ball!", user_id: User.all.sample.id)
comment7 = Comment.create(comment: "I can bring an extra pair of shin guards if anybody needs them.", user_id: User.all.sample.id)
comment8 = Comment.create(comment: "Feel free to call me 555-305-6908 for any other questions!", user_id: User.all.sample.id)
comment9 = Comment.create(comment: "Are dogs allowed at this park?", user_id: User.all.sample.id)
comment10 = Comment.create(comment: "LET'S DO THIS!!!!", user_id: User.all.sample.id)

puts "done seeding comments"

puts "seeding categories"

category_arr = [
    "Football",
    "Baseball",
    "Volleyball",
    "Basketball",
    "Soccer",
    "Rugby",
    "Tennis",
    "Frisbee", 
    "Badminton",
    "Hockey"
]

i = 0
10.times do
   i = i + 1
   category = Category.create(category_title: category_arr[i-1], game_id: Game.all.sample.id)
end

category1 = Category.create(category_title: "Football", game_id: Game.all.sample.id)
category2 = Category.create(category_title: "Soccer", game_id: Game.all.sample.id)
category3 = Category.create(category_title: "Baseball", game_id: Game.all.sample.id)
category4 = Category.create(category_title: "Basketball", game_id: Game.all.sample.id)
category5 = Category.create(category_title: "Volleyball", game_id: Game.all.sample.id)
category6 = Category.create(category_title: "Football", game_id: Game.all.sample.id)
category7 = Category.create(category_title: "Soccer", game_id: Game.all.sample.id)
category8 = Category.create(category_title: "Baseball", game_id: Game.all.sample.id)
category9 = Category.create(category_title: "Basketball", game_id: Game.all.sample.id)
category10 = Category.create(category_title: "Volleyball", game_id: Game.all.sample.id)

puts "done seeding categories"

puts "seeding equipment"

equipment1 = Equipment.create(equipment_title: "ball", game_id: Game.all.sample.id)
equipment2 = Equipment.create(equipment_title: "cones", game_id: Game.all.sample.id)
equipment3 = Equipment.create(equipment_title: "jerseys", game_id: Game.all.sample.id)
equipment4 = Equipment.create(equipment_title: "scoreboard", game_id: Game.all.sample.id)
equipment5 = Equipment.create(equipment_title: "stopwatch", game_id: Game.all.sample.id)


puts "done seeding equipment"
""
puts "seeding users games"

10.times do

user_game = UsersGame.create(game_id: Game.all.sample.id, user_id: User.all.sample.id)

end

puts "done seeding users games"




