# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
one = User.create!(username: 'Theo')
two = User.create!(username: 'Zach')
three = User.create!(username: 'Hulk')
four = User.create!(username: 'Bob')

Artwork.destroy_all
bridge = Artwork.create!(title: 'Bridge', image_url: 'google.com', artist_id: 1)
yourfavorite = Artwork.create!(title: 'yourfavorite', image_url: 'nope.com', artist_id: 2)

ArtworkShare.destroy_all
ArtworkShare.create!(artwork_id: bridge.id, viewer_id: four.id)
ArtworkShare.create!(artwork_id: yourfavorite.id, viewer_id: three.id)