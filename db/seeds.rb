# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# generate 50 profiles


# p "Creating 50 profiles"

# 50.times do |u|
#   url = "https://source.unsplash.com/random/?portrait"
#   profile = User.new(
#     email: Faker::Internet.unique.email,
#     password: Faker::Alphanumeric.alphanumeric(number: 10),
#     username: Faker::Name.unique.name,
#     bio: Faker::Movies::VForVendetta.speech,
#     location: Faker::Address.city,
#     )
#   profile.remote_profile_avatar_url = url
#   profile.remote_profile_banner_url = "https://source.unsplash.com/random/?textures-patters"
#   profile.spotify_top_1 = "spotify:track:1rgnBhdG2JDFTbYkYRZAku"
#   profile.spotify_top_2 = "spotify:track:21jGcNKet2qwijlDFuPiPb"
#   profile.spotify_top_3 = "spotify:track:7LzouaWGFCy4tkXDOOnEyM"
#   profile.spotify_top_4 = "spotify:track:4tidSEPF7Dbxcdxv3VyIHd"
#   profile.spotify_top_5 = "spotify:track:0Y2cjFzr3R7KLPeFyxaggg"
#   profile.save
# end

# p "Here is 50 new profiles"


# p "Creating 50 events"



# 50.times do |e|
#   event = Event.new(
#     title: Faker::Music.unique.album,
#     description: Faker::TvShows::SiliconValley.quote,
#     scheduled_at: DateTime.now + (rand * 50)
#      )
#   event.user_id = rand(1..50)
#   event.remote_banner_url = "https://source.unsplash.com/random/?lights"
#   event.remote_event_avatar_url = "https://source.unsplash.com/random/?art"
#   event.spotify_uri = "spotify:playlist:37i9dQZF1DX5wcoyvtNnP4"
#   event.save
# end

# p "Your events are done!"


# generate 10 moments for each user

p "Generating 10 moments"

Moment.destroy_all

users = User.all
event_count = Event.count
users.each do |user|
  10.times do
    moment = Moment.new
    moment.user = user
    moment.content = Faker::TvShows::RuPaul.quote
    offset = rand(event_count)
    moment.event = Event.offset(offset).first
    moment.save
  end
end


