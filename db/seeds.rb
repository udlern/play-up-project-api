# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "seeding users"

15.times do
    user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password_digest: Faker::Internet.password(min_length: 10, max_length: 20), location: "#{Faker::Address.city, Faker::Address.state}" )
end

puts "done seeding users"

puts "seeding comments"

comment1 = Comment.create(comment: "I'm so excited to play!")
comment2 = Comment.create(comment: "Do we need to bring anything else?")
comment3 = Comment.create(comment: "Do you all want to get food afterwards?")
comment4 = Comment.create(comment: "Should we get there early to set up?")
comment5 = Comment.create(comment: "How long do you think the game will go?")
comment6 = Comment.create(comment: "I'll bring another ball!")
comment7 = Comment.create(comment: "I can bring an extra pair of shin guards if anybody needs them.")
comment8 = Comment.create(comment: "Feel free to call me 555-305-6908 for any other questions!")
comment9 = Comment.create(comment: "Are dogs allowed at this park?")
comment10 = Comment.create(comment: "LET'S DO THIS!!!!")

hello


puts "done seeding comments"

puts "seeding categories"

category1 = Category.create(title: "Football", game_id: Game.all.sample.id)
category2 = Category.create(title: "Soccer", game_id: Game.all.sample.id)
category3 = Category.create(title: "Baseball", game_id: Game.all.sample.id)
category4 = Category.create(title: "Basketball", game_id: Game.all.sample.id)
category5 = Category.create(title: "Volleyball", game_id: Game.all.sample.id)
category6 = Category.create(title: "Football", game_id: Game.all.sample.id)
category7 = Category.create(title: "Soccer", game_id: Game.all.sample.id)
category8 = Category.create(title: "Baseball", game_id: Game.all.sample.id)
category9 = Category.create(title: "Basketball", game_id: Game.all.sample.id)
category10 = Category.create(title: "Volleyball", game_id: Game.all.sample.id)

puts "done seeding categories"

puts "seeding equipment"

equipment1 = Equipment.create(title: "ball", game_id: Game.all.sample.id)
equipment2 = Equipment.create(title: "cones", game_id: Game.all.sample.id)
equipment3 = Equipment.create(title: "jerseys", game_id: Game.all.sample.id)
equipment4 = Equipment.create(title: "scoreboard", game_id: Game.all.sample.id)
equipment5 = Equipment.create(title: "stopwatch", game_id: Game.all.sample.id)


puts "done seeding equipment"

puts "seeding games"

game1 = Game.create(user_id: User.all.sample.id, comment_id: Comment.all.sample.id, equipment: Equipment.all.sample.title, location: "#{Faker::Address.city, Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), category: Category.all.sample.title, num_of_players: Faker::Number.between(from: 1, to: 10))
game2 = Game.create(user_id: User.all.sample.id, comment_id: Comment.all.sample.id, equipment: Equipment.all.sample.title, location: "#{Faker::Address.city, Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), category: Category.all.sample.title, num_of_players: Faker::Number.between(from: 1, to: 10))
game3 = Game.create(user_id: User.all.sample.id, comment_id: Comment.all.sample.id, equipment: Equipment.all.sample.title, location: "#{Faker::Address.city, Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), category: Category.all.sample.title, num_of_players: Faker::Number.between(from: 1, to: 10))
game4 = Game.create(user_id: User.all.sample.id, comment_id: Comment.all.sample.id, equipment: Equipment.all.sample.title, location: "#{Faker::Address.city, Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), category: Category.all.sample.title, num_of_players: Faker::Number.between(from: 1, to: 10))
game5 = Game.create(user_id: User.all.sample.id, comment_id: Comment.all.sample.id, equipment: Equipment.all.sample.title, location: "#{Faker::Address.city, Faker::Address.state}", start_time_and_date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long), category: Category.all.sample.title, num_of_players: Faker::Number.between(from: 1, to: 10))

puts "done seeding games"

puts "seeding users games"

10.times do

user_game = UserGame.create(game_id: Game.all.sample.id, user_id: User.all.sample.id)

end

puts "done seeding users games"




