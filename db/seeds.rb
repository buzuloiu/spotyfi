# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Paul Test',
             email: 'paul@spotyfi.io',
             password: 'password',
             password_confirmation: 'password',
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n + 1}@spotyfi.io"
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)

50.times do |_n|
  content = Faker::TvShows::FamilyGuy.quote
  users.each { |user| user.microposts.create!(content: content) }
end

20.times do |_x|
  artist_name = Faker::Name.name
  artist = Artist.create!(name: artist_name)

  10.times do |_n|
    name = Faker::BossaNova.song #=> "Chega de Saudade"
    url = 'https://s3.amazonaws.com/spotyfimusic/A_Song_For_Her.mp3'
    Song.create!(title: name, url: url, artist_id: artist.id)
  end
end
