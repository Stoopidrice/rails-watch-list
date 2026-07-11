# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

Movie.destroy_all
List.destroy_all

10.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Address.street_address,
    poster_url: "https://www.imdb.com/title/tt2911666/mediaviewer/rm1723909376/?ref_=tt_ov_i",
    rating: rand(1.0..5.0),
  )
puts "done planting seeds!"
end

10.times do
  List.create!(
    name: Faker::Book.genre
  )
  puts "created genres"
end


#   end
