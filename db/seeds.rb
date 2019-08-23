

require 'faker'

10.times do
  user = User.new(
    first_name: Faker::JapaneseMedia::DragonBall.character,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    drinks: Faker::Games::Pokemon.name,
    username: Faker::Games::Pokemon.name,
    password: "password",
  )
  user.save!
end
