# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

require "open-uri"
require "json"


Bookmark.destroy_all
# destroy bookmark first because it depends on movie and list
Movie.destroy_all
List.destroy_all
puts "Cleaned database"

url = "https://tmdb.lewagon.com/movie/top_rated"
json = URI.open(url).read
movies = JSON.parse(json)

movies["results"].each do |movie|
  # replace with .take(10).each do if you only want 10
  Movie.create!(
  title: movie["title"],
  overview: movie["overview"],
  poster_url: "https://image.tmdb.org/t/p/w500#{movie["poster_path"]}",
  # poster_path already starts with a / so you can omit it here
  # see pp data
  rating: movie["vote_average"],
  )
  puts "planted movie seed!"
end
